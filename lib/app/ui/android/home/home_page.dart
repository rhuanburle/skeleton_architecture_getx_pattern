import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeleton_architecture_getx_pattern/app/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          ctrl.getAll();
        }, child: Text('Teste Api')
      ),
      ),
    );
  }
}
