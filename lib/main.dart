import 'package:flutter/material.dart';
import 'package:phone_auth/otp.dart';
import 'package:phone_auth/phone.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes:{
      'phone':(context) => MyPhone(),
      'otp':(context) => MyOtp()
    }
  ));
}


