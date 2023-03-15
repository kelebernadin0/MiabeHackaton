import 'package:flutter/material.dart';
import 'Pages/AccueilPage.dart';
import 'Models/api_service.dart';
import 'Models/Hotel_model.dart';
void main () async
{
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccueilPage()
    );
  }
}