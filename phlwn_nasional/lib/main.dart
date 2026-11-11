import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Maria Walanda Maramis';
  final String location = 'Pahlawan Nasional, Minahasa – Sulawesi Utara';
  final String description =
      "Maria Walanda Maramis adalah tokoh emansipasi perempuan Indonesia yang berasal dari Minahasa.Ia mendirikan organisasi PIKAT (Percintaan Ibu Kepada Anak Turunannya) pada tahun 1917, yang berfokus pada pendidikan, keterampilan, dan pemberdayaan perempuan.Melalui perjuangannya, Maria turut membuka jalan bagi perempuan untuk mendapatkan hak politik dan kesempatan yang lebih luas dalam kehidupan sosial. Atas jasanya, ia dianugerahi gelar Pahlawan Nasional pada tahun 1969.";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pahlawan Nasional'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          
          SizedBox(
            height: 300.0,
            width: double.infinity,
            child: Image.asset(
              'image.png',
              fit: BoxFit.contain,
            ),
          ),
          

          const SizedBox(height: 15.0),

          Row(
            children: <Widget>[
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(width: 130.0),
              const Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              const Text(
                '5',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              )
            ],
          ),

          Container(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}