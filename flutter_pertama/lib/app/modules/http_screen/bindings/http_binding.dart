import 'package:get/get.dart';
import 'package:flutter_pertama/app/data/services/http_controller.dart';

class HttpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpController>(() => HttpController());
  }
}
