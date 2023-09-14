import 'package:flutter/material.dart';
import 'package:flutter_example/components/images/ImagePathWrapper.dart';

class DaisyCard extends StatelessWidget {
    String image_name;
    String description;
    String title;
    final Function onTap;

    DaisyCard({
        super.key, 
        required this.image_name, 
        required this.description, 
        required this.title, 
        required this.onTap
    });

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                onTap();
            },
            child: Card(
                color: Colors.pink[800],
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
                                        ImagePathWrapper.get(image_name),
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
                                                    // Add a title widget
                                                Text(
                                                    title,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w700,
                                                        fontSize : 24,
                                                        color : Colors.grey[50],
                                                    )
                                                ),
                                                // Add some spacing between the subtitle and the text
                                                Container(height: 3),
                                                // Add a text widget to display some text
                                                Text(
                                                    description,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize : 14,
                                                        color : Colors.grey[50],
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
            ),
        );      
    }
}