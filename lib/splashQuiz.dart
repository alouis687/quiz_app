import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class SplashQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2IUBbAxYNe_W3buiZZ1S9wK4lXCV67V7hg&s'),
            ),
            SizedBox(height: 20), // Add some spacing
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Display a loading indicator while waiting
                  return CircularProgressIndicator();
                } else {
                  // After the delay, display the button
                  return MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>QuizMain()));
                    },
                    color: Colors.grey,
                    minWidth: 200,
                    shape: StadiumBorder(),
                    child: Text("Start"),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}