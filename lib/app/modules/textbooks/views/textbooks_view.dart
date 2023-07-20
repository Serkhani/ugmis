import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/textbooks_controller.dart';

class TextbooksView extends GetView<TextbooksController> {
  const TextbooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextbooksView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TextbooksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
