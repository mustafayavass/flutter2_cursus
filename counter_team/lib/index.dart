import 'dart:math' as math;
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String result = "";
  List<String> name = [
    "Mustafa",
    "İsmail",
    "Yiğit",
    "Eymen",
    "Egemen",
    "Arda",
    "Metehan",
    "Mert",
    "Mehmet",
    "Tevfik",
  ];
  List<String> team1 = [];
  List<String> team2 = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Team",
          style: TextStyle(fontSize: 25, color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _randomTeam,
              child: Text("Takım Oluştur"),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ListView.builder(
                    itemBuilder: _writeTeam2,
                    itemCount: team2.length,
                  ),
                  color: Colors.lightBlueAccent,
                  height: 300,
                  width: 200,
                ),
                Container(
                  child: ListView.builder(
                    itemBuilder: _writeTeam1,
                    itemCount: team1.length,
                  ),
                  color: Colors.red,
                  height: 300,
                  width: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _randomTeam() {
    setState(() {
      var intValue;
      for (var i = 0; i < 5; i++) {
        intValue = math.Random().nextInt(name.length);
        team1.add(name[intValue]);
        name.remove(name[intValue]);
      }
      for (var i = 0; i < 5; i++) {
        intValue = math.Random().nextInt(name.length);
        team2.add(name[intValue]);
        name.remove(name[intValue]);
      }
    });
  }

  Widget _writeTeam1(BuildContext context, int index) {
    return Column(children: [ListTile(title: Text(team1[index]))]);
  }

  Widget _writeTeam2(BuildContext context, int index) {
    return Column(children: [ListTile(title: Text(team2[index]))]);
  }
}
