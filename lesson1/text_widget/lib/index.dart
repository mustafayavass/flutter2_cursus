import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
          child: Text(
        "0s, when an unknown printer took a galley of type and scrambled it anged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with deskto to make a type specimen book. It has survived not only five centuries, but also the",
        textAlign: TextAlign.center,
        maxLines: 3,
        overflow: TextOverflow.fade,
        style: TextStyle(
            fontSize: 14,
            color: Colors.lightBlue,
            fontFamily: "Roboto",
            backgroundColor: Colors.grey,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline),
      )),
    );
  }
}
