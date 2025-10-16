import 'dart:math';
import 'package:flutter/material.dart';

class CoinFlip extends StatefulWidget {
  const CoinFlip({super.key});

  @override
  State<CoinFlip> createState() => _CoinFlipState();
}

class _CoinFlipState extends State<CoinFlip> {

  String coinFace = ''; // To store the result of the coin flip

  void flipCoin() {
    setState(() {
      // Generate a random number (0 or 1)
      final random = Random();
      final randomNumber = random.nextInt(2);

      // Set the coin face based on the random number
      if(randomNumber == 0){
        coinFace = "Heads";
      } else {
        coinFace = "Tails";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin Flip')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Coin Face:',
              style: TextStyle(fontSize: 24)
            ),
            const SizedBox(height: 20),
            Text(
              coinFace,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                flipCoin();
              },
              child: const Text('Flip Coin')
            )
          ]
        )
      )
    );
  }
}
