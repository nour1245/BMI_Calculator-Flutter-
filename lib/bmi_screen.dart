import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120;
  double age = 20;
  double weight = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 172, 181),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 34, 40, 49),
        child: Column(
          children: [
            //gender part start
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale
                                ? Colors.blue
                                : const Color.fromARGB(255, 57, 62, 70),
                          ),
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage(
                                  "assets/images/male.png",
                                ),
                                height: 90,
                                width: 90,
                              ),
                              Text(
                                'male',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 238, 238, 238),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale
                                ? const Color.fromARGB(255, 57, 62, 70)
                                : Colors.blue,
                          ),
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90,
                                width: 90,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 238, 238, 238),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
            //gender part end

            //start of height slider area
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 57, 62, 70),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: (Color.fromARGB(255, 238, 238, 238)),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
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
                              color: (Color.fromARGB(255, 238, 238, 238)),
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              color: (Color.fromARGB(255, 238, 238, 238)),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 250,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //end of hight slider area

            //start of age and weight area
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      //age container
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 57, 62, 70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                color: (Color.fromARGB(255, 238, 238, 238)),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age.round()}',
                              style: const TextStyle(
                                color: (Color.fromARGB(255, 238, 238, 238)),
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'age--',
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: 'age++',
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //weight container
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 57, 62, 70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'weight',
                              style: TextStyle(
                                color: (Color.fromARGB(255, 238, 238, 238)),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${weight.round()}',
                              style: const TextStyle(
                                color: (Color.fromARGB(255, 238, 238, 238)),
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight--',
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight++',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
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
            //end of age area

            //calc button start
            Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 0, 173, 181),
              child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResult(
                        age: age.round(),
                        gender: isMale,
                        result: result.round(),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Clac',
                  style: TextStyle(
                    color: (Color.fromARGB(255, 238, 238, 238)),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ], //BodyColumnEnd
        ),
      ),
    );
  }
}
