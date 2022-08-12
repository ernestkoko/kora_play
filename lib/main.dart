import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kora_play/app/modules/onboarding_module/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Koraplay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home:  OnboardingPage(),
    );
  }
}
final color = Color(0xFF363cc0);
final color1 =Color(0xFF000000
);
final color2 = Color(0xFFe2eaf1);
   MaterialColor primary = MaterialColor(
  _bluePrimaryValue,
  <int, Color>{
    50: const Color(0xFFE3F2FD),
    100:const  Color(0xFFBBDEFB),
    200:const  Color(0xFF90CAF9),
    300:const Color(0xFF64B5F6),
    400: const Color(0xFF42A5F5),
    500: Color(_bluePrimaryValue),
    600: const Color(0xFF1E88E5),
    700: const Color(0xFF1976D2),
    800: const Color(0xFF1565C0),
    900: const Color(0xFF0D47A1),
  },
);
   int _bluePrimaryValue = 0xFF363cc0;