import 'package:flutter/material.dart';
import 'package:suspension_bro/ui_kit/ui_kit.dart';

class SuspensionContainerWidget extends StatelessWidget {
  static const double _width = 350;
  static const double _height = 150;

  const SuspensionContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlassMorphism(
      width: _width,
      height: _height,
      child: Placeholder(),
    );
  }
}
