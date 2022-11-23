import 'package:flutter/material.dart';
import 'package:test_task_flutter/colors.dart';
import 'package:test_task_flutter/random_number_generator.dart';

import 'keys.dart';

class YellowScreen extends StatefulWidget {
  const YellowScreen({
    Key? key,
    required this.generator,
  }) : super(key: key);

  final RandomNumberGenerator generator;

  @override
  State<YellowScreen> createState() => _YellowScreenState();
}

class _YellowScreenState extends State<YellowScreen> {
  int? randomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: yellowColor,
        title: const Text('Желтый экран'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        color: yellowColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                key: const Key(Keys.randomNumberContainerKey),
                alignment: Alignment.center,
                child: _printRandomNumber(randomNumber),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    randomNumber = widget.generator.generate();
                  });
                },
                child: const Text('Случайное число')),
          ],
        ),
      ),
    );
  }

  Widget _printRandomNumber(int? number) {
    if (number == null) {
      return const SizedBox.shrink();
    }

    final Color color = number < 50 ? blueColor : Colors.black;

    return Text(
      number.toString(),
      style: TextStyle(fontSize: 50, color: color),
    );
  }
}
