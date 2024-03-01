import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBikeWidget extends StatelessWidget {
  final Animation<double> _forkAnimation;
  final Animation<double> _shockAnimation;

  const SvgBikeWidget({
    super.key,
    required Animation<double> forkAnimation,
    required Animation<double> shockAnimation,
  })  : _forkAnimation = forkAnimation,
        _shockAnimation = shockAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          child:  SvgPicture.asset(
            'assets/svg/bike.svg',
            // color: Colors.blueGrey,
          ),
          shaderCallback: (bounds){
            return const RadialGradient(
                colors: [Colors.yellow, Colors.blue,Colors.yellow,Colors.orange]
              // colors: [Colors.tealAccent, Colors.tealAccent,Colors.tealAccent,Colors.orange]
            ).createShader(bounds);
          },
        ),
        ScaleTransition(
            scale: _forkAnimation,
            child: SvgPicture.asset('assets/svg/fork.svg')),
        ScaleTransition(
          scale: _shockAnimation,
          child: SvgPicture.asset('assets/svg/shock.svg'),
        ),
      ],
    );
  }
}