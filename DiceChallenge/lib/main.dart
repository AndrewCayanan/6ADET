import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceHomePage(),
    );
  }
}

class DiceHomePage extends StatefulWidget {
  const DiceHomePage({super.key});

  @override
  State<DiceHomePage> createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  final Random random = Random();

  int get total => leftDiceNumber + rightDiceNumber;

  Color get counterColor =>
      total < 6 ? Colors.red : Colors.blue;

  void rollDice() {
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      rightDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dice App Cayanan'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Dice$leftDiceNumber.png',
                  width: 160,
                ),
                const SizedBox(width: 20),
                Image.asset(
                  'assets/images/Dice$rightDiceNumber.png',
                  width: 160,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Total: $total',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: counterColor,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            ),
             if (total == 7) 
              const Text('Congratulations You Won The Jackpot!'),
          ],
        ),
      ),
    );
  }
}
