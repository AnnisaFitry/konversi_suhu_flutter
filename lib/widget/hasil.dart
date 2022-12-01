import 'package:flutter/material.dart';

class hasil extends StatelessWidget {
  const hasil({
    Key? key,
    required this.kelvin,
    required this.reamur,
  }) : super(key: key);

  final double kelvin;
  final double reamur;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            /*1*/

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*2*/

                Container(
                  child: Text(
                    'Suhu dalam Kelvin',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '$kelvin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            /*1*/

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*2*/

                Container(
                  child: Text(
                    'Suhu dalam Reamur',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '$reamur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
