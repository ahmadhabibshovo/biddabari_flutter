import 'package:biddabari_flutter/home/data/model/courses_model.dart';
import 'package:biddabari_flutter/home/data/repository/endpoints.dart';
import 'package:dio/dio.dart';

final dio = Dio();

Future<CoursesModel> getHomeCourses() async {
  final response = await dio.get(Endpoints.getHomeCourses);

  return CoursesModel.fromJson(response.data as Map<String, dynamic>);
}
