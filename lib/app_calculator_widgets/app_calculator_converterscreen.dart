import 'package:flutter/material.dart';
import 'package:app_calculator/app_calculator_controller/app_calculator_mile_converter.dart';


class MileConverter extends StatefulWidget {
  const MileConverter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MileConverter();
  }
}

class _MileConverter extends State<MileConverter> {
  late final TextEditingController _controller_Km_To_Mile = TextEditingController();
  num value = 0;
  num result = 0;


  @override
  void initState() {
    super.initState();
    _controller_Km_To_Mile.text = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kilometer to Mile Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      onChanged: (val) => value = double.parse(val),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Kilometers Amount',
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _controller_Km_To_Mile,
                      enabled: false,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    )
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children:  [
                Expanded(
                    child:
                    OutlinedButton(onPressed: () {
                      KmMileConverter controller =
                      KmMileConverter(value);
                      result = controller.convertMile();
                      setState(() {
                        _controller_Km_To_Mile.text = result.toString();
                      });
                    },
                      child: const Text("Convert to Miles")
                      ,)
                )
              ],
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text("Return"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}