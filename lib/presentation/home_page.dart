import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(80, 51, 255, 1),
        centerTitle: true,
        title: const Text(
          "الرئيسية",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "IBM_Plex_Sans_Arabic",
          ),
        ),
      ),

      body: const Center(
        child: Text(
          "الصفحة الرئيسية",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: "IBM_Plex_Sans_Arabic",
          ),
        ),
      ),
    );
  }
}