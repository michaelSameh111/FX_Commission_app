class FxCommNewsModel {
  String? status;
  NewsDetails? newsDetails;
  List<OtherNews>? otherNews;

  FxCommNewsModel({this.status, this.newsDetails, this.otherNews});

  FxCommNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    newsDetails = json['News details'] != null
        ? new NewsDetails.fromJson(json['News details'])
        : null;
    if (json['Other news'] != null) {
      otherNews = <OtherNews>[];
      json['Other news'].forEach((v) {
        otherNews!.add(new OtherNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.newsDetails != null) {
      data['News details'] = this.newsDetails!.toJson();
    }
    if (this.otherNews != null) {
      data['Other news'] = this.otherNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NewsDetails {
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;

  NewsDetails(
      {this.createdBy,
        this.createdAt,
        this.image,
        this.title,
        this.description});

  NewsDetails.fromJson(Map<String, dynamic> json) {
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

class OtherNews {
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;

  OtherNews(
      {this.createdBy,
        this.createdAt,
        this.image,
        this.title,
        this.description});

  OtherNews.fromJson(Map<String, dynamic> json) {
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
