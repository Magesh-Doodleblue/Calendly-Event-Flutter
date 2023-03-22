import 'package:flutter/material.dart';

import 'left.dart';
import 'right.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
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
          UserLeftSide(),
          UserRightSide(),
        ],
      ),
    );
  }
}
