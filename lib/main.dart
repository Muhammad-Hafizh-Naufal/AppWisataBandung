import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // biar kontennya full ngikurin tampilan layar
          children: <Widget>[
            // content 1
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            // content 2
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // icons 1
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8),
                      Text('Open Everyday'),
                    ],
                  ),
                  // icons 2
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time_outlined),
                      SizedBox(height: 8),
                      Text('09:00 - 20:00'),
                    ],
                  ),
                  // icons 3
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8),
                      Text('09:00 - 20:00'),
                    ],
                  ),
                ],
              ),
            ),

            // content 3
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// baru sampe steps 9