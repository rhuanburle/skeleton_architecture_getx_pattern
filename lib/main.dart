import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeleton_architecture_getx_pattern/app/routes/app_pages.dart';
import 'package:skeleton_architecture_getx_pattern/app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Skeleton Architecture GetX Pattern',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.homePage,
      getPages: AppPages.pages,
    ),);
}
