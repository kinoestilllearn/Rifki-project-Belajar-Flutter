import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => PoliDetailState();
}

class PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail ${widget.poli.namaPoli}"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your edit functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add delete confirmation dialog here
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Hapus Poli"),
                      content: const Text(
                          "Apakah Anda yakin ingin menghapus poli ini?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Batal"),
                        ),
                        TextButton(
                          onPressed: () {
                            // Confirm delete action
                            Navigator.pop(context);
                            Navigator.pop(context); // Close PoliDetail
                          },
                          child: const Text("Hapus"),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text("Hapus"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
