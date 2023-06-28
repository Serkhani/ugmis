import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ugmis/app/components/textfield.dart';
import 'package:ugmis/resources/sizes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.marginMedium),
          child: Column(
            children: [
              TextInputField(labelText: 'Student ID', hintText: '109*****'),
              TextInputField(labelText: 'Pin', hintText: '12345', obscureText: true),
            ],
          )
        )
      ),
    );
  }
}
