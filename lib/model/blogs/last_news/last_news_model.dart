class LastNewsModel {
  String? status;
  List<LastNews>? lastNews;

  LastNewsModel({this.status, this.lastNews});

  LastNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['latest news'] != null) {
      lastNews = <LastNews>[];
      json['latest news'].forEach((v) {
        lastNews!.add(new LastNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.lastNews != null) {
      data['latest news'] = this.lastNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LastNews {
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;

  LastNews(
      {this.createdBy,
        this.createdAt,
        this.image,
        this.title,
        this.description});

  LastNews.fromJson(Map<String, dynamic> json) {
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