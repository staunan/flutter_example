import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter_example/login_screens/home_screen.dart';
import 'package:flutter_example/login_screens/login_screen.dart';

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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen()
      },
    );
  }
}