import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreens extends StatefulWidget {
  const RollDiceScreens({super.key});

  @override
  State<RollDiceScreens> createState() => _RollDiceScreensState();
}

int activeDiceFace = 6;
List<String> diceImage = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Die_face_1b.svg/640px-Die_face_1b.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Die_face_2b.svg/768px-Die_face_2b.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Die_face_3b.svg/2048px-Die_face_3b.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Dice-4-b.svg/1024px-Dice-4-b.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Die_face_5b.svg/2048px-Die_face_5b.svg.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCqjMfXvWofn47rmNSPDDmutDShxuQd1ajaWOv8re1qrPmOdyCnMmmH_iz2gdx9YoWVCk&usqp=CAU',
  'https://cdn.pixabay.com/animation/2022/11/09/13/33/13-33-02-34_512.gif',
];

class _RollDiceScreensState extends State<RollDiceScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Rolling Dice",
                style: TextStyle(
                  fontSize: 69,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[activeDiceFace],
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    var randomNum = Random().nextInt(6);
                    setState(() {
                      activeDiceFace = randomNum;
                    });
                    print("tops pressed the button");
                  },
                  child: Text("Roll Dice"))
            ],
          ),
        ),
      ),
    );
  }
}
