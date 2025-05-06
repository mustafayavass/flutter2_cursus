import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Expanded",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              children: [
                Text("Liste Başı"),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Liste Sonu"),
              ],
            )
            //Row(  children: [Text("Boy:"), Expanded(child: TextField())],),
            ));
  }
}
