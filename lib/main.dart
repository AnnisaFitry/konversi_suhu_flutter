import 'package:flutter/material.dart';
import 'package:konversi_suhu_flutter/widget/button.dart';
import 'package:konversi_suhu_flutter/widget/hasil.dart';
import 'package:konversi_suhu_flutter/widget/input.dart';

void main() {
  runApp(MyApp()); //const
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  TextEditingController masukan = new TextEditingController();

  // state : value yang berubah ;
  double masukanUser = 0;
  double kelvin = 0;
  double reamur = 0;
  convert() {
    setState(() {
      masukanUser = double.parse(masukan.text);
      kelvin = masukanUser + 273;
      reamur = masukanUser * 0.8;
    });
  }

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
              input(masukan: masukan),
              hasil(kelvin: kelvin, reamur: reamur),
              button(
                convert: convert,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
