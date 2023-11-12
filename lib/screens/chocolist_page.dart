import 'package:flutter/material.dart';
import 'package:inventory_pbp/models/choco_models.dart';
import 'package:inventory_pbp/widgets/left_drawer.dart';

class ChocoListPage extends StatelessWidget {
  final List<Choco> chocoList; 

  const ChocoListPage({Key? key, required this.chocoList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Coklat'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: chocoList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text(chocoList[index].name),
              subtitle: Text('Jumlah: ${chocoList[index].amount} | Harga: ${chocoList[index].price}'),
              onTap: () {
                // Menampilkan popup dengan informasi barang yang di-klik
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(chocoList[index].name),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Jumlah: ${chocoList[index].amount}'),
                          Text('Harga: ${chocoList[index].price}'),
                          Text('Deskripsi: ${chocoList[index].description}'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}