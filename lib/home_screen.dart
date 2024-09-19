import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'home_screen';
  String name;
  String email;
  HomeScreen({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Home screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Your name is:  ${name} ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Your email is: ${email} ',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
