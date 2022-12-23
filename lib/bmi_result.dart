import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BmiResult extends StatelessWidget {
  var gender;
  var result;
  var age;

  BmiResult({
    required this.age,
    required this.gender,
    required this.result,
  });

  var textColor = const Color.fromARGB(255, 248, 97, 97);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 173, 181),
        title: const Text('Result'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 34, 40, 49),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${gender ? 'Male' : 'Female'}',
              style: const TextStyle(
                color: Color.fromARGB(255, 238, 238, 238),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                color: Color.fromARGB(255, 238, 238, 238),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result:$result',
              style: const TextStyle(
                color: Color.fromARGB(255, 238, 238, 238),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Results below 18.5 -> underweight.',
                style: TextStyle(color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Results in range between 18.5 and 24.9 -> healthy weight',
                style: TextStyle(color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Results in range between 25 and 29.9 -> overweight',
                style: TextStyle(color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Results in range 30 or over -> obese range',
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
