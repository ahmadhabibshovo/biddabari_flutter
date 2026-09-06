import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCardWidget extends StatelessWidget {
  const CourseCardWidget({
    super.key,
    required this.bannerImage,
    required this.courseTitile,
    required this.courseSubtitle,
    required this.coursePrice,
    required this.durationInMonth,
    required this.totalClass,
    required this.totalExam,
    required this.totalLive,
  });
  final String bannerImage;
  final String courseTitile;
  final String courseSubtitle;
  final String coursePrice;
  final String durationInMonth;
  final String totalClass;
  final String totalExam;
  final String totalLive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.r),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(imageUrl: bannerImage),
          Text(courseTitile),
          Text(courseSubtitle),
          Text(coursePrice),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(durationInMonth),
              Text(totalClass),
              Text(totalExam),
              Text(totalLive),
            ],
          ),
        ],
      ),
    );
  }
}
