import 'dart:math';
import 'package:flutter/material.dart';

class NomadeeCircularProgressIndicator extends StatefulWidget {
  const NomadeeCircularProgressIndicator({
    super.key,
    this.size = 50,
    this.strokeWidth = 5,
    this.trackColor = const Color(0xFFD9D9D9),
    this.progressColor = const Color(0xFF1A73E8),
    this.progressDegrees = 60.0,
    this.trackDegrees = 260.0,
    this.duration = const Duration(milliseconds: 900),
  });

  final double size;

  final double strokeWidth;

  final Color trackColor;

  final Color progressColor;

  final double progressDegrees;

  final double trackDegrees;

  final Duration duration;

  @override
  State<NomadeeCircularProgressIndicator> createState() =>
      _NomadeeCircularProgressIndicatorState();
}

class _NomadeeCircularProgressIndicatorState
    extends State<NomadeeCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, _) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: _CircularProgressPainter(
            rotation: _controller.value,
            trackColor: widget.trackColor,
            progressColor: widget.progressColor,
            strokeWidth: widget.strokeWidth,
            progressDegrees: widget.progressDegrees,
            trackDegrees: widget.trackDegrees,
          ),
        );
      },
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  const _CircularProgressPainter({
    required this.rotation,
    required this.trackColor,
    required this.progressColor,
    required this.strokeWidth,
    required this.progressDegrees,
    required this.trackDegrees,
  });

  final double rotation;
  final Color trackColor;
  final Color progressColor;
  final double strokeWidth;
  final double progressDegrees;
  final double trackDegrees;

  static double _deg(double deg) => deg * pi / 180;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    final baseAngle = _deg(360 * rotation);
    final progressStart = baseAngle;

    final trackStart = _deg(360 * rotation + 80);

    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(rect, trackStart, _deg(trackDegrees), false, trackPaint);
    canvas.drawArc(
      rect,
      progressStart,
      _deg(progressDegrees),
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(_CircularProgressPainter old) =>
      old.rotation != rotation ||
      old.trackColor != trackColor ||
      old.progressColor != progressColor ||
      old.strokeWidth != strokeWidth ||
      old.progressDegrees != progressDegrees ||
      old.trackDegrees != trackDegrees;
}
