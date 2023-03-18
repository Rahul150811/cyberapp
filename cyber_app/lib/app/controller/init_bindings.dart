import 'package:get/get.dart';

import '../../../../app/controller/controllers.dart';

class InitBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.lazyPut<FormsController>(() => FormsController());
  }
}
