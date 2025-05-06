import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<String> _sehirler = ["İstanbul", "Konya", "Kocaeli", "İzmir", "Ankara"];
  String _changedCity = "İstanbul";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Drop Down Button",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: DropdownButton(
              value: _changedCity,
              onChanged: _changeCity,
              items: [
                DropdownMenuItem<String>(
                  value: _sehirler[0],
                  child: Text(_sehirler[0]),
                ),
                DropdownMenuItem<String>(
                  value: _sehirler[1],
                  child: Text(_sehirler[1]),
                ),
                DropdownMenuItem<String>(
                  value: _sehirler[2],
                  child: Text(_sehirler[2]),
                ),
              ]),
        ));
  }

  void _changeCity(String? newchangedCity) {
    if (newchangedCity != null) {
      setState(() {
        _changedCity = newchangedCity;
      });
    }
  }
}
