import 'package:flutter/material.dart';

class MainArea extends StatefulWidget {
  final Widget child;
  const MainArea({super.key, required this.child});

  @override
  State<MainArea> createState() => _MainAreaState();
}

class _MainAreaState extends State<MainArea> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: widget.child),
    );
  }
}
