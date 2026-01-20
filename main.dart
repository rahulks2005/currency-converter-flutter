import 'package:apps/Currency_Converter_Material_Page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: const CurrencyConverterMaterialPage(),
    );
  }
}
