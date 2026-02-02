// imports dart library 
import 'package:flutter/material.dart';

// App starting point
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TASK 1: Change the title of the app
      title: "Kayla\'s mobile app",
      theme: ThemeData(
        // TASK 2: Change the primary swatch color (try Colors.red, Colors.green)
        primarySwatch: Colors.green,
      ),
      home: HomePage(), // possible navigation
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // is this the navbar?
        // TASK 3: Change the text in the top bar
        title: Text('Welcome to my app!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TASK 4: Change the main text below
            Text(
              'Let\'s learn more about Flutter together!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // styles the text
            ),
            SizedBox(height: 20), // Adds space between widgets
            // TASK 5: Change the subtitle text
            Text(
              'This page covers how to add text and style to a Flutter app.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },
              // TASK 6: Change the text on the button
              child: 
                Text('Click here'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 30),
            Text(
              'Created by: Kayla Thornton',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
