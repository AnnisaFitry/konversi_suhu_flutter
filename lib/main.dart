import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp()); //const
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              input,
              hasil,
              converter,
            ],
          ),
        ),
      ),
    );
  }
}

Widget input = Container(
  margin: const EdgeInsets.all(5),
  child: TextFormField(
    autofocus: true,
    keyboardType:
        const TextInputType.numberWithOptions(decimal: true, signed: false),
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    textInputAction: TextInputAction.next,
    decoration: const InputDecoration(
      filled: true,
      hintText: 'Masukkan Suhu Dalam Celcius',
    ),
  ),
);

Widget converter = Container(
  margin: const EdgeInsets.all(5),
  width: double.infinity,
  height: 40,
  child: ElevatedButton(
    onPressed: () {},
    child: const Text(
      'Konvert Suhu',
      style: TextStyle(color: Colors.white),
    ),
  ),
);

Widget hasil = Container(
  child: Row(
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
                '150',
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
                '200',
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
