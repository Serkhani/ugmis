import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  // General
  static const TextStyle sesStyle = TextStyle(
    color: Color(0xff182A88),
    fontFamily: 'Akshar',
    fontWeight: FontWeight.bold,
    fontSize: 14.0,
  );
  static const TextStyle welcomeStyle = TextStyle(
    color: Color(0xff010138),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );
  static const TextStyle inputTextLabelStyle = TextStyle(
    color: Color(0xff8391A1),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
    fontSize: 15.0,
  );
  static const TextStyle buttonLabelStyle = TextStyle(
    // color: Color(0xff8391A1),
    fontFamily: 'PlusJakartaSans',
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
  );

  // Login
  static const welcome = 'Welcome back! Glad to see you , Again!';
  static const studentId = 'Student ID';
  static const studentIdEg = '109*****';
  static const pin = 'Pin';
  static const pinPinEg = '12345';
  static const logIn = "LOGIN";
  static const noAccount = "Don't have an account? ";
  static const registerNow = "Register Now";
}
