import 'package:biddabari_flutter/home/data/repository/dio.dart';
import 'package:biddabari_flutter/home/presentation/widgets/course_card_widget.dart';
import 'package:flutter/material.dart';

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
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return CourseCardWidget(
            bannerImage: '',
            courseTitile: '',
            courseSubtitle: '',
            coursePrice: '',
            durationInMonth: '',
            totalClass: '',
            totalExam: '',
            totalLive: '',
          );
        },
      ),
    );
  }
}
