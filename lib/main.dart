import 'package:flutter/material.dart';
import 'package:tugas_ikan/ui/ikan_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page = const CircularProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tugas",
      home: IkanPage(),
    );
  }
}
