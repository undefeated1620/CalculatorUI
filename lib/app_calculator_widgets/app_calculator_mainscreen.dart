import 'package:flutter/material.dart';
import 'package:app_calculator/app_calculator_widgets/app_calculator_converterscreen.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State <MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(0.0),
              color: Colors.white,
              width: 500.0,
              height: 350.0,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: null, child: Text("+")),
                OutlinedButton(onPressed: null, child: Text("-")),
                OutlinedButton(onPressed: null, child: Text("*")),
                OutlinedButton(onPressed: null, child: Text("/")),
                OutlinedButton(onPressed: null, child: Text("AC")),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: null, child: Text("9")),
                OutlinedButton(onPressed: null, child: Text("8")),
                OutlinedButton(onPressed: null, child: Text("7")),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: null, child: Text("6")),
                OutlinedButton(onPressed: null, child: Text("5")),
                OutlinedButton(onPressed: null, child: Text("4")),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: null, child: Text("3")),
                OutlinedButton(onPressed: null, child: Text("2")),
                OutlinedButton(onPressed: null, child: Text("1")),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: null, child: Text("0")),
                OutlinedButton(onPressed: null, child: Text(",")),
                OutlinedButton(onPressed: null, child: Text("="))
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const MileConverter()),
                  );
                }
                    , child: const Text("Go to Mile Converter")),
              ],
            )
          ],
        ),
      ),
    );
  }
}