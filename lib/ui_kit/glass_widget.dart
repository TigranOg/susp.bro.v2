import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget _child;
  final double _width;
  final double _height;

  const GlassMorphism(
      {super.key, required Widget child, required double width, required double height})
      : _child = child,
        _width = width,
        _height = height;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8.0);

    return ClipRRect(
      borderRadius: borderRadius,
      child: SizedBox(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
              child: SizedBox(
                height: _height,
                child: Text("BackdropFilter"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 30)],
                border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
                borderRadius: borderRadius,
                gradient:
                    LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.2),
                ]),
              ),
              height: _height,
              width: double.infinity,
              child: _child,
            ),
          ],
        ),
      ),
    );
  }
}
