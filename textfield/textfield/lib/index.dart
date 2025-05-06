import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String _text = "deneme";
  String _textfield = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextField",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _text,
              style: TextStyle(fontSize: 50),
            ),
            Container(
              child: TextField(
                onChanged: _textChanged,
                keyboardType: TextInputType.number,
                maxLines: 1,
                maxLength: 10,
                textAlign: TextAlign.center,
                obscureText: true,
                enabled: true,
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Sayı Giriniz",
                    prefix: Icon(Icons.text_fields),
                    suffix: Icon(Icons.telegram),
                    filled: true,
                    fillColor: Colors.deepOrange),
              ),
              width: 250,
            ),
            SizedBox(
              height: 50,
            ),
            IconButton(
                onPressed: _clickButton,
                icon: Icon(
                  Icons.send,
                  size: 50,
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }

  void _textChanged(String newtext) {
    setState(() {
      _textfield = newtext;
    });
  }

  void _clickButton() {
    setState(() {
      _text = _textfield;
    });
  }
}
