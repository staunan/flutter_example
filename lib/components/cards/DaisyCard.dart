import 'package:flutter/material.dart';
import 'package:flutter_example/components/images/ImagePathWrapper.dart';

class DaisyCard extends StatelessWidget {
    const DaisyCard({super.key});

    @override
    Widget build(BuildContext context) {
        return Card(
            color: Color(0xff5722),
            // Define the shape of the card
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
            ),
            // Define how the card's content should be clipped
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // Define the child widget of the card
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    // Add padding around the row widget
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                // Add an image widget to display an image
                                Image.asset(
                                    ImagePathWrapper.get("welcome.png"),
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 20),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            // Add some spacing between the top of the card and the title
                                            Container(height: 5),
                                            // Add a title widget
                                            Text(
                                                "Cards Title 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize : 28,
                                                    color : Color(0xFF37474F),
                                                )
                                            ),
                                            // Add some spacing between the title and the subtitle
                                            Container(height: 5),
                                            // Add a subtitle widget
                                            Text(
                                                "Sub Title",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize : 18,
                                                    color : Color(0xFF37474F),
                                                )
                                            ),
                                            // Add some spacing between the subtitle and the text
                                            Container(height: 10),
                                            // Add a text widget to display some text
                                            Text(
                                                "This is a demo description will be placed here...",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize : 15,
                                                    color : Color(0xFF37474F),
                                                )
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}