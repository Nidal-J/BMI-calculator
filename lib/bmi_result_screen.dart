import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult(
      {required this.bmiResult,
      required this.age,
      required this.height,
      required this.weight,
      required this.isMale,
      Key? key})
      : super(key: key);
  final double bmiResult;
  final double height;
  final int weight;
  final int age;
  final bool isMale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 21, 32),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text('BMT result'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMale ? 'Gender: male' : 'Gender: female',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            Text(
              'Height: ${height.round()}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            Text(
              'Weight: ${weight.round()}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'BMI result: ${bmiResult.round()}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
