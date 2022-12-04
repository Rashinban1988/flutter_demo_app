import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDetail extends StatelessWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.arguments['greeting']}, ${Get.arguments['name']}'),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Go back'),
            )
            ]
        ),
      ),
    );
  }
}