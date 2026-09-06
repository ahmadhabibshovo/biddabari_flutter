import 'package:biddabari_flutter/home/data/repository/dio.dart';
import 'package:biddabari_flutter/home/data/repository/endpoints.dart';
import 'package:biddabari_flutter/home/logic/get_home_courses_controller.dart';
import 'package:biddabari_flutter/home/presentation/widgets/course_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final data = await getHomeCourses();
          print(data.courses?.first.title);
        },
      ),
      appBar: AppBar(title: Text("BiddaaBari"), centerTitle: true),
      body: GetBuilder<GetHomeCoursesController>(
        builder: (context) {
          if (Get.find<GetHomeCoursesController>().isLoaded == false) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: Get.find<GetHomeCoursesController>()
                .coursesModel
                ?.courses
                ?.length,
            itemBuilder: (context, index) {
              final course = Get.find<GetHomeCoursesController>()
                  .coursesModel
                  ?.courses?[index];

              return CourseCardWidget(
                bannerImage:
                    Endpoints.storageUrl +
                    course!.banner!.split("https://api.biddabari.com").last,
                courseTitile: course.title ?? "",
                courseSubtitle: course.subTitle ?? "",
                coursePrice:
                    "Price: " +
                    (course.price ?? 0 - (course.discountAmount ?? 0))
                        .toString() +
                    "  Taka",
                durationInMonth: ((course.durationInMonth ?? " ") + " months"),
                totalClass: ((course.totalClass ?? " ") + " Classes"),
                totalExam: (course.totalExam.toString() + " Exams"),
                totalLive: (course.totalLive.toString() + " Live"),
              );
            },
          );
        },
      ),
    );
  }
}
