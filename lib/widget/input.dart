import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({
    Key? key,
    required this.masukan,
  }) : super(key: key);

  final TextEditingController masukan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: TextFormField(
        autofocus: true,
        controller: masukan,
        keyboardType:
            const TextInputType.numberWithOptions(decimal: true, signed: false),
        // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          filled: true,
          hintText: 'Masukkan Suhu Dalam Celcius',
        ),
      ),
    );
  }
}
