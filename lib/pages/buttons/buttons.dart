import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_example/components/components.dart';
import 'package:flutter_example/components/buttons/NiceButtons.dart';

class PageButtons extends StatelessWidget {
  const PageButtons({super.key});
  static String id = 'page_buttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                NiceButtons(
                    stretch: false,
                    gradientOrientation: GradientOrientation.Horizontal,
                    onTap: (finish) {
                        print('On tap called');
                    },
                    child: Text(
                        'Normal Button',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
                SizedBox(height: 10),
                NiceButtons(
                    stretch: true,
                    gradientOrientation: GradientOrientation.Horizontal,
                    onTap: (finish) {
                        print('On tap called');
                    },
                    child: Text(
                        'Nice Buttons - Full Width',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
                SizedBox(height: 10),
                NiceButtons(
                    stretch: false,
                    progress: true,
                    gradientOrientation: GradientOrientation.Horizontal,
                    onTap: (finish) {
                        print('On tap called');
                        Timer(Duration(seconds: 5), () {
                            finish();
                        });
                    },
                    child: Text(
                        'With Progress',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
                SizedBox(height: 10),
                NiceButtons(
                    stretch: false,
                    borderRadius: 30,
                    gradientOrientation: GradientOrientation.Horizontal,
                    onTap: (finish) {
                        print('On tap called');
                    },
                    child: Text(
                        '3D Pill',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
                SizedBox(height: 10),
                NiceButtons(
                    stretch: false,
                    gradientOrientation: GradientOrientation.Vertical,
                    onTap: (finish) {
                        print('On tap called');
                    },
                    child: Text(
                        'Vertical Gradient',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
                SizedBox(height: 10),
                NiceButtons(
                    stretch: false,
                    gradientOrientation: GradientOrientation.Vertical,
                    width: 300,
                    onTap: (finish) {
                        print('On tap called');
                    },
                    child: Text(
                        'Fixed Width',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}