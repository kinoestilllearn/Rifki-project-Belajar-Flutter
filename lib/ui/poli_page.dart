import 'package:flutter/material.dart';
import 'poli_detail.dart';
import '../model/poli.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => PoliPageState();
}

class PoliPageState extends State<PoliPage> {
  // List of Poli instances
  final List<Poli> poliList = [
    Poli(namaPoli: "Poli Anak"),
    Poli(namaPoli: "Poli Kandungan"),
    Poli(namaPoli: "Poli Gigi"),
    Poli(namaPoli: "Poli THT"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
      ),
      body: ListView.builder(
        itemCount: poliList.length,
        itemBuilder: (context, index) {
          final poli = poliList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PoliDetail(poli: poli),
                ),
              );
            },
            child: Card(
              child: ListTile(
                title: Text(poli.namaPoli),
              ),
            ),
          );
        },
      ),
    );
  }
}
