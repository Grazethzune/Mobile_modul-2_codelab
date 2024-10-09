import 'package:codelab_modul2/app/data/services/http_controller.dart';
import 'package:get/get.dart';

class HttpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpController>(
      () => HttpController(),
    );
  }
}
