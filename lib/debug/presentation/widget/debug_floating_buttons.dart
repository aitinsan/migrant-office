// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:migrant_office/core/di/root_di_module.dart';

const double kHandleWidth = 28;
const double kThemeButtonHeight = 56;

class DebugFloatingButtonWrapper extends StatelessWidget {
  const DebugFloatingButtonWrapper({
    required this.diModule,
    required this.child,
    super.key,
    this.enabled = false,
  });

  final RootDiModule diModule;

  final Widget child;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return MediaQuery.fromView(
      view: View.of(context),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DebugFloatingButton(diModule: diModule, child: child),
      ),
    );
  }
}

class DebugFloatingButton extends StatefulWidget {
  const DebugFloatingButton({
    super.key,
    required this.diModule,
    required this.child,
  });

  final Widget child;

  final RootDiModule diModule;

  @override
  State<DebugFloatingButton> createState() => _DebugFloatingButtonState();
}

class _DebugFloatingButtonState extends State<DebugFloatingButton> {
  Offset position = Offset.zero;
  Offset initialLocalPosition = Offset.zero;
  Offset initialPosition = Offset.zero;

  bool animate = false;
  bool hidden = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (hidden) {
      final left = MediaQuery.of(context).size.width - kHandleWidth;
      position = Offset(
        left,
        position.dy == 0 ? kThemeButtonHeight : position.dy,
      );
    }
  }

  void hide() {
    animate = true;
    final width = MediaQuery.of(context).size.width;
    final left = !hidden ? width - kHandleWidth : width - 180;
    hidden = !hidden;
    setState(() => position = Offset(left, position.dy));
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.fromView(
      view: View.of(context),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          fit: StackFit.expand,
          children: [
            widget.child,
            AnimatedPositioned(
              duration: Duration(milliseconds: animate ? 200 : 0),
              left: position.dx,
              top: position.dy,
              onEnd: () {
                animate = false;
              },
              child: Material(
                type: MaterialType.transparency,
                child: Builder(
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      height: kThemeButtonHeight,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onPanUpdate: (details) {
                              final delta =
                                  details.localPosition - initialLocalPosition;
                              setState(() {
                                hidden = false;
                                position = Offset(
                                  (initialPosition.dx + delta.dx).clamp(
                                    0,
                                    MediaQuery.of(context).size.width -
                                        kHandleWidth,
                                  ),
                                  (initialPosition.dy + delta.dy).clamp(
                                    0,
                                    MediaQuery.of(context).size.height -
                                        kThemeButtonHeight,
                                  ),
                                );
                              });
                            },
                            onPanStart: (details) {
                              initialLocalPosition = details.localPosition;
                              initialPosition = position;
                            },
                            onPanEnd: (details) {
                              initialLocalPosition = Offset.zero;
                              initialPosition = Offset.zero;
                            },
                            onTap: hide,
                            child: SizedBox(
                              width: kHandleWidth,
                              height: double.infinity,
                              child: Icon(
                                Icons.drag_indicator_rounded,
                                size: 20,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints.tightFor(
                                    width: 40,
                                    height: 40,
                                  ),
                            child: Ink(
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(6),
                                onTap: () {
                                  final router = widget.diModule.appRootRouter;
                                  router.showDebugScreen(context);
                                  hide();
                                },
                                child: Center(
                                  child: Icon(
                                    Icons.widgets,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
