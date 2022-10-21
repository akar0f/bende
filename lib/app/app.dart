import 'package:bende/app/screens/home_screen.dart';
import 'package:bende/app/themes/colors.dart';
import 'package:bende/app/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Bende',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //useMaterial3: true,
        canvasColor: BendeColors.onyx,
        splashColor: BendeColors.blackSea,
        textTheme: BendeTextStyles(context),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: BendeColors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarColor: BendeColors.transparent,
          ),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: BendeColors.white),
      ),
      home: const HomeScreen(),
    );
  }
}