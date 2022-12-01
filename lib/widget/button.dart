import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final VoidCallback convert;
  button({
    Key? key,
    required this.convert,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: convert,
        child: const Text(
          'Konvert Suhu',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
