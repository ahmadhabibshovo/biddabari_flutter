class CoursesModel {
  List<Courses>? courses;

  CoursesModel({this.courses});

  CoursesModel.fromJson(Map<String, dynamic> json) {
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(Courses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (courses != null) {
      data['courses'] = courses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Courses {
  int? id;
  String? title;
  String? subTitle;
  int? price;
  String? banner;
  int? discountType;
  int? discountAmount;
  String? discountStartDate;
  String? discountEndDate;
  String? altText;
  String? bannerTitle;
  String? durationInMonth;
  String? totalClass;
  int? totalExam;
  int? totalLive;
  String? orderStatus;

  Courses({
    this.id,
    this.title,
    this.subTitle,
    this.price,
    this.banner,
    this.discountType,
    this.discountAmount,
    this.discountStartDate,
    this.discountEndDate,
    this.altText,
    this.bannerTitle,
    this.durationInMonth,
    this.totalClass,
    this.totalExam,
    this.totalLive,
    this.orderStatus,
  });

  Courses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['sub_title'];
    price = json['price'];
    banner = json['banner'];
    discountType = json['discount_type'];
    discountAmount = json['discount_amount'];
    discountStartDate = json['discount_start_date'];
    discountEndDate = json['discount_end_date'];
    altText = json['alt_text'];
    bannerTitle = json['banner_title'];
    durationInMonth = json['duration_in_month'];
    totalClass = json['total_class'];
    totalExam = json['total_exam'];
    totalLive = json['total_live'];
    orderStatus = json['order_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['sub_title'] = subTitle;
    data['price'] = price;
    data['banner'] = banner;
    data['discount_type'] = discountType;
    data['discount_amount'] = discountAmount;
    data['discount_start_date'] = discountStartDate;
    data['discount_end_date'] = discountEndDate;
    data['alt_text'] = altText;
    data['banner_title'] = bannerTitle;
    data['duration_in_month'] = durationInMonth;
    data['total_class'] = totalClass;
    data['total_exam'] = totalExam;
    data['total_live'] = totalLive;
    data['order_status'] = orderStatus;
    return data;
  }
}
