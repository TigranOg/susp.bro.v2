import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBikeWidget extends StatelessWidget {
  const SvgBikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          child: SvgPicture.asset(
            'assets/svg/bike.svg',
            // color: Colors.blueGrey,
          ),
          shaderCallback: (bounds) {
            return const RadialGradient(
                colors: [Colors.lightBlue, Colors.blue, Colors.yellow, Colors.tealAccent]
                // colors: [Colors.tealAccent, Colors.tealAccent,Colors.tealAccent,Colors.orange]
                ).createShader(bounds);
          },
        ),
        SvgPicture.asset('assets/svg/fork.svg'),
        SvgPicture.asset('assets/svg/shock.svg'),
      ],
    );
  }
}
