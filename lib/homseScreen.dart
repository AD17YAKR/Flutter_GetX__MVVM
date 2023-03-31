// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/counterController.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      body: Center(
          child: Obx(
        () => Text(
          counterController.counter.toString(),
          style: TextStyle(fontSize: 52),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();
        },
        child: Icon(Icons.abc),
      ),
    );
  }
}
