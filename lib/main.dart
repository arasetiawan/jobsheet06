import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Ara Setiawan',
    'ROBBY ANDREY SETIAWAN',
    'NADYA DWI PERTIWI',
    'ALWI JAFAR SODIK',
    'DEVITA APRILIANI',
  ];
  var listWarna = [
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.brown,
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          textAlign: TextAlign.center,
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        )
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Ara Setiawan',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 1, 119, 255),
          title: const Text(
            'STMIK WIDYA UTAMA',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: teksUtama),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      )));
}