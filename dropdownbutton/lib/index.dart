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
              items: _sehirler.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList()),
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
