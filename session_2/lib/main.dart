import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  final String title='Teluk Penyu';
  final String location='Cilacap, Jawa Tengah';
  final String description = 
  "Teluk Penyu merupakan kawasan pantai di selatan Kabupaten Cilacap, utamanya sepanjang pesisir dari Kecamatan Cilacap Selatan yang lokasinya tidak langsung berhubungan dengan Samudera India atau Indonesia karena dibentengi oleh Pulau Nusakambangan. Pantai Teluk Penyu berjarak 2 Km ke arah timur dari Pusat Pemerintahan Kabupaten Cilacap dan dapat dijangkau dengan kendaraan umum dan pribadi. Teluk ini cukup memiliki pemandangan yang indah dengan luas kira-kira 14 ha ";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'image.png',
            height: 250.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title, 
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
              width: 130.0,  
              ),
              Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              description,
              style: TextStyle(
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