import 'package:biddabari_flutter/home/logic/get_home_courses_controller.dart';
import 'package:get/get.dart';

class InitialScreenBindings implements Bindings {
  InitialScreenBindings();

  @override
  void dependencies() {
    Get.lazyPut(() => GetHomeCoursesController());
  }
}
