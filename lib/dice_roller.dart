import 'dart:developer' as dev;
import 'dart:math';


import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
      int activaDiceImg = 1;
      final random = Random();

      void roolDice () {
        dev.log('Btn is clicked');
        setState(() {
          activaDiceImg = random.nextInt(6) + 1;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('images/dice-$activaDiceImg.png',width: 200,),
        TextButton(
          style: TextButton.styleFrom(
            // backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            textStyle: const  TextStyle(
              fontSize: 28
            )
          ),
          onPressed: roolDice, 
          child: const Text('Change Roll Dice'),
          ),
      ],
     );
  }
}