import 'package:flutter/material.dart';
import 'package:ecommerce_application/routes.dart';
import 'package:ecommerce_application/screens/profile/profile_screen.dart';
import 'package:ecommerce_application/screens/splash/splash_screen.dart';
import 'package:ecommerce_application/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
