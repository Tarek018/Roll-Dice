import 'dart:developer';

import 'package:flutter/material.dart';

import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});


 
      


  
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.black,
              Colors.red,
            ],
          ),
        ),
        child: const Center(
        child: DiceRoller(),
      )
      );
  }
  
}
// Widget myCustomText(String msg) {
     
//      return Column(
//       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset('images/dice-1.png',width: 200,),
//         TextButton(
//           style: TextButton.styleFrom(
//             backgroundColor: Colors.black,
//             foregroundColor: Colors.white,
//             textStyle: const  TextStyle(
//               fontSize: 28
//             )
//           ),
//           onPressed: wiroolDice, 
//           child: const Text('Roll Dice'),
//           ),
//       ],
//      );
// }
