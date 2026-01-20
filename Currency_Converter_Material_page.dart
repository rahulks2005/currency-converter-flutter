import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  final OutlineInputBorder border = const OutlineInputBorder(
    borderSide: BorderSide(
      width: 2.5,
      style: BorderStyle.solid,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Please Enter the amount in EUR",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: const Icon(Icons.euro_symbol_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  result =
                      double.parse(textEditingController.text) * 105.07;
                });
              },
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
    }
}

