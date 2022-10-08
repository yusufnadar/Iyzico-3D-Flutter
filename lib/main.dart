import 'package:flutter/material.dart';
import 'package:iyzico/pages/credit_card_page.dart';

import 'pages/credit_card_paynet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iyzico And Paynet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreditCardPaynet(),
    );
  }
}
