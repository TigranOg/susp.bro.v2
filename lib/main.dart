import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suspension_bro/features/main_page/main_page.dart';

import 'core/core.dart';
import 'ui_kit/ui_kit.dart';

void main() {
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final isPhone = shortestSide < 600;

    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      builder: (context, child) {
        return MaterialApp(
          title: 'Suspension Bro',
          themeMode: context.watch<ThemeProvider>().themeMode,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          darkTheme: ThemeData.dark(),
          home: MainPageScreen(isPhone: isPhone),
        );
      },
    );
  }
}
