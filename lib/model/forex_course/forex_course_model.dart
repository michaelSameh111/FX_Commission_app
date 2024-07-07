class ForexCourseModel {
  String? status;
  List<Courses>? courses;

  ForexCourseModel({this.status, this.courses});

  ForexCourseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(new Courses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.courses != null) {
      data['courses'] = this.courses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Courses {
  int? id;
  String? title;
  String? description;
  String? level;
  String? price;
  String? language;
  String? image;
  String? video;
  String? slug;
  String? forexCourse;
  String? status;

  Courses(
      {this.id,
        this.title,
        this.description,
        this.level,
        this.price,
        this.language,
        this.image,
        this.video,
        this.slug,
        this.forexCourse,
        this.status});

  Courses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    level = json['level'];
    price = json['price'];
    language = json['language'];
    image = json['image'];
    video = json['video'];
    slug = json['slug'];
    forexCourse = json['forex_course'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['level'] = this.level;
    data['price'] = this.price;
    data['language'] = this.language;
    data['image'] = this.image;
    data['video'] = this.video;
    data['slug'] = this.slug;
    data['forex_course'] = this.forexCourse;
    data['status'] = this.status;
    return data;
  }
}