import 'package:countally/pages/widgets/counter_button.dart';
import 'package:countally/pages/widgets/main_area.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterNumber = 0;

  void counterAdd() {
    setState(() {
      ++counterNumber;
    });
  }

  void counterSubtract() {
    if (counterNumber > 0) {
      setState(() {
        --counterNumber;
      });
    }
  }

  void resetCounter() {
    if (counterNumber > 0) {
      setState(() {
        counterNumber = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainArea(
      child: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              const Row(),
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      counterNumber.toString(),
                      style: GoogleFonts.barlowCondensed(
                          fontSize: 124, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: IconButton(
                  onPressed: resetCounter,
                  icon: const Icon(
                    Icons.restart_alt_rounded,
                    size: 32,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CounterButton(
                      iconData: Icons.remove,
                      onPressed: counterSubtract,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CounterButton(
                          iconData: Icons.add, onPressed: counterAdd),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
