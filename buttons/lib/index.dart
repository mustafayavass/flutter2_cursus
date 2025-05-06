import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Elevated Button",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _count.toString(),
              style: TextStyle(fontSize: 100),
            ),
            /*ElevatedButton(
                onLongPress: () {
                  setState(() {
                    _count = 0;
                  });
                },
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Text(
                  "Sayacı Arttır",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 10,
                    padding: EdgeInsets.all(50)))*/
            /*ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              onLongPress: () {
                setState(() {
                  _count = 0;
                });
              },
              label: Text(
                "Sayacı Arttır",
                style: TextStyle(color: Colors.green),
              ),
              icon: Icon(
                Icons.watch,
                color: Colors.green,
              ),
            ),*/
            TextButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Text("Sayacı Arttır")),
            IconButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                icon: Icon(
                  Icons.check_circle,
                  size: 40,
                  color: Colors.green,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.question_answer),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
