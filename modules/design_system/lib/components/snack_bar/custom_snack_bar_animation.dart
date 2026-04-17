import 'dart:async';

// Flutter imports:
import 'package:design_system/components/snack_bar/snack_bar.dart';
import 'package:flutter/material.dart';

enum _SnackPosition { top, bottom }

OverlayEntry? _currentEntry;

/// Показывает кастомный снек сверху
/// Usage: showTopSnack(context, Snack.success('example'));
void showTopSnack(
  BuildContext context,
  Snack child, {
  bool persistent = false,
  VoidCallback? onDismissed,
}) {
  _showSnack(
    context,
    child,
    position: _SnackPosition.top,
    dismissDirection: DismissDirection.up,
    padding: const EdgeInsets.only(top: 52, left: 20, right: 20),
    persistent: persistent,
    onDismissed: onDismissed,
  );
}

/// Показывает кастомный снек снизу
/// Usage: showBottomSnack(context, CustomSnackBar.success(message: 'example'));
void showBottomSnack(
  BuildContext context,
  Snack child, {
  bool persistent = false,
  VoidCallback? onDismissed,
}) {
  _showSnack(
    context,
    child,
    position: _SnackPosition.bottom,
    dismissDirection: DismissDirection.down,
    padding: const EdgeInsets.only(bottom: 52, left: 20, right: 20),
    persistent: persistent,
    onDismissed: onDismissed,
  );
}

void _showSnack(
  BuildContext context,
  Snack child, {
  required _SnackPosition position,
  required DismissDirection dismissDirection,
  EdgeInsets? padding,
  bool persistent = false,
  VoidCallback? onDismissed,
}) {
  final newEntry = OverlayEntry(
    builder: (_) {
      return _CustomSnackBarAnimation(
        onDismissed: () {
          onDismissed?.call();
          _currentEntry?.remove();
          _currentEntry = null;
        },
        snackPosition: position,
        animationDuration: const Duration(milliseconds: 300),
        reverseAnimationDuration: const Duration(milliseconds: 300),
        displayDuration: const Duration(milliseconds: 1800),
        persistent: persistent,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
        dismissDirection: dismissDirection,
        child: child,
      );
    },
  );

  // ignore: avoid-non-null-assertion
  if (_currentEntry != null && _currentEntry!.mounted) {
    _currentEntry?.remove();
  }

  Overlay.of(context, rootOverlay: true).insert(newEntry);

  _currentEntry = newEntry;
}

class _CustomSnackBarAnimation extends StatefulWidget {
  const _CustomSnackBarAnimation({
    required this.child,
    required this.onDismissed,
    required this.snackPosition,
    required this.animationDuration,
    required this.reverseAnimationDuration,
    required this.displayDuration,
    required this.padding,
    required this.dismissDirection,
    this.persistent = false,
  });

  final Widget child;
  final VoidCallback onDismissed;
  final _SnackPosition snackPosition;
  final Duration animationDuration;
  final Duration reverseAnimationDuration;
  final Duration displayDuration;
  final bool persistent;
  final EdgeInsets padding;
  final DismissDirection dismissDirection;

  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<_CustomSnackBarAnimation>
    with SingleTickerProviderStateMixin {
  late final Animation<Offset> _offsetAnimation;
  late final AnimationController _animationController;
  late final Tween<Offset> _tween;
  late final bool _isTop;

  Timer? _timer;

  @override
  void initState() {
    _isTop = widget.snackPosition == _SnackPosition.top;
    _tween = Tween(
      begin: _isTop ? const Offset(0, -3) : const Offset(0, 3),
      end: Offset.zero,
    );

    _animationController =
        AnimationController(
          vsync: this,
          duration: widget.animationDuration,
          reverseDuration: widget.reverseAnimationDuration,
        )..addStatusListener((AnimationStatus status) {
          if (status == AnimationStatus.completed && !widget.persistent) {
            _timer = Timer(widget.displayDuration, () {
              if (mounted) {
                unawaited(_animationController.reverse());
              }
            });
          }

          if (status == AnimationStatus.dismissed) {
            _timer?.cancel();
            widget.onDismissed.call();
          }
        });

    _offsetAnimation = _tween.animate(_animationController);

    if (mounted) {
      unawaited(_animationController.forward());
    }

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _isTop ? widget.padding.top : null,
      left: widget.padding.left,
      right: widget.padding.right,
      bottom: _isTop ? null : widget.padding.bottom,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Dismissible(
          direction: widget.dismissDirection,
          key: UniqueKey(),
          dismissThresholds: _isTop
              ? {DismissDirection.up: 0.2}
              : {DismissDirection.down: 0.2},
          confirmDismiss: (DismissDirection direction) async {
            if (!widget.persistent && mounted) {
              if (direction == widget.dismissDirection) {
                unawaited(_animationController.reverse());
              }
            }
            return false;
          },
          child: Center(child: widget.child),
        ),
      ),
    );
  }
}
