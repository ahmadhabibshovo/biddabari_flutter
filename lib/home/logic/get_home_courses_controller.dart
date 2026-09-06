import 'dart:developer';

import 'package:biddabari_flutter/home/data/model/courses_model.dart';
import 'package:biddabari_flutter/home/data/repository/dio.dart';
import 'package:get/get.dart';

class GetHomeCoursesController extends GetxController {
  CoursesModel? coursesModel;
  bool isLoaded = false;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    try {
      coursesModel = await getHomeCourses();
      isLoaded = true;
    } catch (e) {
      log("api call failed: ${e.toString()}}");
    }

    update();
  }
}
