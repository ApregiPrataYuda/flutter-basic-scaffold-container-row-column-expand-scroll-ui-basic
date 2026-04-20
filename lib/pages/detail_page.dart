import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Center(
        child: Text(
          "Detail dari $title",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}