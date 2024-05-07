import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizPage.dart';

class QuizMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.purple], // Gradient colors
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(title: Text("Mini Quiz App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
    // backgroundColor: Colors.transparent, // Make app bar transparent
    elevation: 0, // Remove app bar elevation
    ),
    body: QuizPage(),
      )
    );
  }
}