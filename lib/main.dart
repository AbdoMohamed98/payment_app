import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout_payment/presentation/views/mycartview.dart';
import 'package:payment_app/features/paymentconfirmation/presentation/views/paymentconfirmationview.dart';
import 'package:payment_app/features/paymentdetails/presentation/views/paymentdetailsview.dart';
// <-- fix import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Paymentconfirmationview(), // <-- FIXED
    );
  }
}