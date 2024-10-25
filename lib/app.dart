import 'package:flutstore/bindings/general_bindings.dart';
import 'package:flutstore/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutstore/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    );
  }
}
