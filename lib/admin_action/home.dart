import 'package:flutter/material.dart';

import 'left.dart';
import 'right.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: Row(
        children: const [
          LeftSide(),
          RightSide(),
        ],
      ),
    );
  }
}
