import 'package:get/get.dart';
import 'package:skeleton_architecture_getx_pattern/app/controller/home_controller.dart';
import 'package:skeleton_architecture_getx_pattern/app/data/repository/repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<Repository>(() => Repository());
  }
}