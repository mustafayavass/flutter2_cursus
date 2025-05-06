import 'package:flutter/material.dart';
import 'package:listview/sehir.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Sehir> _sehirler = [
    Sehir("İstanbul", 15000000, 34),
    Sehir("Ankara", 5500000, 6),
    Sehir("İzmir", 4350000, 35),
    Sehir("Bursa", 3051452, 16),
    Sehir("Antalya", 2502140, 7),
    Sehir("Adana", 2254101, 1),
    Sehir("Konya", 2234561, 42),
    Sehir("Şanlıurfa", 2070014, 63),
    Sehir("Gaziantep", 2060078, 27),
    Sehir("Kocaeli", 1950144, 41),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List View",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            itemBuilder: _listCreate,
            itemCount: _sehirler.length,
          ),
        ));
  }
  
  Widget _listCreate(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_sehirler[index].isim),
        subtitle: Text(_sehirler[index].nufus.toString()),
        trailing: Text(_sehirler[index].plakaKodu.toString()),
        leading: Icon(Icons.location_city),
      ),
      elevation: 4,
    );
  }
}
