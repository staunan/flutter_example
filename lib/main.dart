import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter_example/pages/auth/welcome.dart';
import 'package:flutter_example/pages/auth/login.dart';
import 'package:flutter_example/pages/auth/signup.dart';
import 'package:flutter_example/pages/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    setWindowMaxSize(const Size(600, 1000));
    setWindowMinSize(const Size(600, 1000));
    Future<Null>.delayed(Duration(seconds: 1), () {
        setWindowFrame(Rect.fromCenter(center: Offset(1000, 500), width: 600, height: 1000));
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Ubuntu',
          ),
        )
      ),
      initialRoute: PageWelcome.id,
      routes: {
        PageWelcome.id: (context) => PageWelcome(),
        PageLogin.id: (context) => PageLogin(),
        PageSignup.id: (context) => PageSignup(),
        PageHome.id: (context) => PageHome()
      },
    );
  }
}