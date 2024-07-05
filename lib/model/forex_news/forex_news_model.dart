class ForexNewsModel {
  String? status;
  List<ForexNews>? forexNews;

  ForexNewsModel({this.status, this.forexNews});

  ForexNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['forex news'] != null) {
      forexNews = <ForexNews>[];
      json['forex news'].forEach((v) {
        forexNews!.add(new ForexNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.forexNews != null) {
      data['forex news'] = this.forexNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ForexNews {
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;

  ForexNews(
      {this.createdBy,
      this.createdAt,
      this.image,
      this.title,
      this.description});

  ForexNews.fromJson(Map<String, dynamic> json) {
    createdBy = json['created by'];
    createdAt = json['created at'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created by'] = this.createdBy;
    data['created at'] = this.createdAt;
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}
