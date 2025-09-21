import 'package:firstapp/screen/addform.dart';
import 'package:firstapp/screen/item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'แอพพลิเคชั่น',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}


