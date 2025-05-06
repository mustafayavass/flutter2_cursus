import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Row And Column",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.purple,
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
          Text("Deneme"),
          Text("Deneme2")
        ],
      ),
    );
  }
}
