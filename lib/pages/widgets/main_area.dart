import 'package:flutter/material.dart';

class MainArea extends StatefulWidget {
  const MainArea({super.key});

  @override
  State<MainArea> createState() => _MainAreaState();
}

class _MainAreaState extends State<MainArea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(color: Colors.grey.shade100),
      ),
    );
  }
}
