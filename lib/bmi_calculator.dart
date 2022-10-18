import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

double height = 150.0;
int weight = 70;
int age = 28;
bool isMale = true;

class _BmiCalculatorState extends State<BmiCalculator> {
  double bmiResult = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 21, 32),
        appBar: AppBar(
          title: const Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 24.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          isMale = true;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale
                                ? const Color.fromARGB(255, 249, 76, 102)
                                : const Color.fromARGB(255, 16, 33, 58),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 90.0,
                                color: isMale ? Colors.white : Colors.white54,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: isMale ? Colors.white : Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          isMale = false;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale
                                ? const Color.fromARGB(255, 16, 33, 58)
                                : const Color.fromARGB(255, 249, 76, 102),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 90.0,
                                color: isMale ? Colors.white54 : Colors.white,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: isMale ? Colors.white54 : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 25, 47, 82),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            'cm',
                            // textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 50.0,
                        max: 250.0,
                        onChanged: (value) {
                          height = value;
                          setState(() {});
                        },
                        thumbColor: const Color.fromARGB(255, 249, 76, 102),
                        activeColor: Colors.white,
                        inactiveColor: Colors.white30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 47, 82),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    weight--;
                                    setState(() {});
                                  },
                                  mini: true,
                                  backgroundColor: Colors.grey.shade600,
                                  heroTag: 'weight decrement',
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    weight++;
                                    setState(() {});
                                  },
                                  mini: true,
                                  backgroundColor: Colors.grey.shade600,
                                  heroTag: 'weight increment',
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 47, 82),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    age--;
                                    setState(() {});
                                  },
                                  mini: true,
                                  backgroundColor: Colors.grey.shade600,
                                  heroTag: 'age decrement',
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                  mini: true,
                                  backgroundColor: Colors.grey.shade600,
                                  heroTag: 'age increment',
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CalculateWidget(),
          ],
        ),
      ),
    );
  }
}

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      color: const Color.fromARGB(255, 249, 76, 102),
      child: MaterialButton(
        onPressed: () {
          double bmiResult = weight / pow((height / 100), 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return BmiResult(
                  bmiResult: bmiResult,
                  weight: weight,
                  height: height,
                  age: age,
                  isMale: isMale,
                );
              },
            ),
          );
        },
        child: const Text(
          'Calculate',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}
