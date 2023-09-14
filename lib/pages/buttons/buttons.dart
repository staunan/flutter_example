import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:async';
import 'package:flutter_example/components/components.dart';
import 'package:flutter_example/components/buttons/NiceButtons.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class PageButtons extends StatelessWidget {
  const PageButtons({super.key});
  static String id = 'page_buttons';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
        primary: Colors.black87,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        ).copyWith(
        side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                    return BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                    );
                return BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 1,
                );
            },
        ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                // Nice Buttons --
                GFAccordion(
                    title: 'Nice Buttons',
                    contentChild: Column(
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
                        ]
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.remove)
                ),
                SizedBox(height: 10),
                // Text Buttons --
                GFAccordion(
                    title: 'Text Buttons',
                    contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                ),
                                onPressed: () { },
                                child: Text('Text Button'),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                            if (states.contains(MaterialState.hovered))
                                                return Colors.yellow.withOpacity(0.71);
                                            if (states.contains(MaterialState.focused) ||
                                                states.contains(MaterialState.pressed))
                                                return Colors.red.withOpacity(0.71);
                                            return null;
                                        },
                                    ),
                                ),
                                onPressed: () { },
                                child: Text('Button State Background Colors')
                            ),
                            SizedBox(height: 10),
                            TextButton(
                                style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                            if (states.contains(MaterialState.focused))
                                                return Colors.grey;
                                            return null;
                                        }
                                    ),
                                ),
                                onPressed: () {},
                                child: Text('Focused Color - Text Button'),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.blue,
                                    onSurface: Colors.red,
                                ),
                                onPressed: null,
                                child: Text('Disabled Button'),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                                style: flatButtonStyle,
                                onPressed: () { },
                                child: Text('Looks like a Flat Button'),
                            ),
                        ]
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.remove)
                ),
                SizedBox(height: 10),
                // Raised Buttons --
                GFAccordion(
                    title: 'Raised Buttons',
                    contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            ElevatedButton(
                                style: raisedButtonStyle,
                                onPressed: () { },
                                child: Text('Looks like a Raised Button'),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 14)),
                                onPressed: () {},
                                child: const Text('Enabled'),
                            ),
                        ]
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.remove)
                ),
                SizedBox(height: 10),
                // Outline Buttons --
                GFAccordion(
                    title: 'Outline Buttons',
                    contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: (){},
                                child: Text('Looks like an Outline Button'),
                            ),
                            SizedBox(height: 10),
                            OutlinedButton(
                                onPressed: (){},
                                child: Text("OUTLINED BUTTON"),
                            ),
                            SizedBox(height: 10),
                            OutlinedButton.icon(
                                onPressed: (){},
                                icon: Icon(Icons.add, size: 18),
                                label: Text("OUTLINED BUTTON"),
                            ),
                        ]
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.remove)
                ),
            ],
          ),
        ),
      ),
    );
  }
}