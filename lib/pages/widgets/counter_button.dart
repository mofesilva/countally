import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  final IconData iconData;
  final Function() onPressed;
  const CounterButton(
      {super.key, required this.iconData, required this.onPressed});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(Colors.grey.shade300),
        elevation: MaterialStateProperty.all(2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Icon(widget.iconData),
      ),
    );
  }
}
