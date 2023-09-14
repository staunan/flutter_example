import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/components/components.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});
  static String id = 'page_home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
        child: const Center(
          child: ScreenTitle(
            title: 'Welcome',
          ),
        ),
      ),
    );
  }
}