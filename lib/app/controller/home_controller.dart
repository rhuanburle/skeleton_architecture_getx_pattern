import 'package:get/get.dart';
import 'package:skeleton_architecture_getx_pattern/app/data/model/teste_model.dart';
import 'package:skeleton_architecture_getx_pattern/app/data/repository/repository.dart';

class HomeController extends GetxController {

  final repository = Get.find<Repository>();

  getAll() async {
    final response = await repository.get('comments?postId=1');
    jsonToModel(response.data);
  }

  List<TesteModel> testeModelList = [];
  void jsonToModel(List<dynamic>response) {
    for(var item in response) {
      testeModelList.add(TesteModel.fromJson(item));
    }
    testeModelList.forEach((element) {
      print(element.name);
    });
  }
}