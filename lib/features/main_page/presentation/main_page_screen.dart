import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:suspension_bro/ui_kit/theme_provider.dart';

import 'widget/widget.dart';

class MainPageScreen extends StatefulWidget {
  final bool isPhone;

  const MainPageScreen({required this.isPhone, super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  void initState() {
    super.initState();
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
            child: const SvgBikeWidget(),
          ),
          const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SuspensionContainerWidget(),
                SizedBox(height: 150),
                SuspensionContainerWidget()
              ],
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
}
