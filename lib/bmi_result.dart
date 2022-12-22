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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 0, 173, 181),
        title: const Text('Result'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${gender ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result:$result',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Results below 18.5 -> underweight.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Results in range between 18.5 and 24.9 -> healthy weight',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                ' Results in range between 25 and 29.9 -> overweight',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Results in range 30 or over -> obese range',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
