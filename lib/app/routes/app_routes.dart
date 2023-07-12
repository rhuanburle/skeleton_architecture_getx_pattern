import 'package:get/get.dart';
import 'package:skeleton_architecture_getx_pattern/app/bindings/home_binding.dart';
import 'package:skeleton_architecture_getx_pattern/app/routes/app_pages.dart';
import 'package:skeleton_architecture_getx_pattern/app/ui/android/home/home_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.homePage, page: () => HomePage(), binding: HomeBinding()),
  ];
}