import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:suspension_bro/ui_kit/theme_provider.dart';

import 'widget/svg_bike_widget.dart';

class MainPageScreen extends StatefulWidget {
  final bool isPhone;

  const MainPageScreen({required this.isPhone, super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> with TickerProviderStateMixin {
  late AnimationController _forkAnimationController, _shockAnimationController;
  final Tween<double> _suspensionTween = Tween(begin: 1.2, end: 1);
  final bool _showForkSetup = false;
  final bool _showShockSetup = false;

  @override
  void initState() {
    super.initState();
    _forkAnimationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _forkAnimationController.repeat(reverse: true);
    _forkAnimationController.addStatusListener((status) {
      if (AnimationStatus.reverse == status) {
        if (!_showForkSetup) _forkAnimationController.reset();
      }
    });

    _shockAnimationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _shockAnimationController.addStatusListener((status) {
      if (AnimationStatus.reverse == status) {
        if (!_showShockSetup) _shockAnimationController.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Suspension Bro"),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/svg/background_mountains.svg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: widget.isPhone ? Alignment.center : Alignment.centerLeft,
            child: SvgBikeWidget(
              forkAnimation: _getForkAnimation(),
              shockAnimation: _getShockAnimation(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeTheme,
        tooltip: 'Increment',
        child: const Icon(Icons.change_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _changeTheme() {
    final isBright = Theme.of(context).brightness == Brightness.light;
    context.read<ThemeProvider>().changeTheme(isBright);
  }

  Animation<double> _getForkAnimation() {
    return _suspensionTween
        .animate(CurvedAnimation(parent: _forkAnimationController, curve: Curves.easeInOutQuad));
  }

  Animation<double> _getShockAnimation() {
    return _suspensionTween
        .animate(CurvedAnimation(parent: _shockAnimationController, curve: Curves.easeInOutQuad));
  }
}
