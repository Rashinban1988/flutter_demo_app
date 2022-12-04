import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuIndex extends StatefulWidget {
  const MenuIndex({Key? key}) : super(key: key);

  @override
  State<MenuIndex> createState() => _MenuIndexState();
}

class _MenuIndexState extends State<MenuIndex> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('成功'),
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