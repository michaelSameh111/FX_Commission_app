class AnalysisAndInsightsModel {
  String? status;
  List<Insights>? insights;

  AnalysisAndInsightsModel({this.status, this.insights});

  AnalysisAndInsightsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['insights'] != null) {
      insights = <Insights>[];
      json['insights'].forEach((v) {
        insights!.add(new Insights.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.insights != null) {
      data['insights'] = this.insights!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Insights {
  int? id;
  String? title;
  String? description;
  String? category;
  String? createdBy;
  String? userImage;
  String? image;
  String? status;
  String? createdAt;

  Insights(
      {this.id,
        this.title,
        this.description,
        this.category,
        this.createdBy,
        this.userImage,
        this.image,
        this.status,
        this.createdAt});

  Insights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    createdBy = json['created_by'];
    userImage = json['user image'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['category'] = this.category;
    data['created_by'] = this.createdBy;
    data['user image'] = this.userImage;
    data['image'] = this.image;
    data['status'] = this.status;
    data['created at'] = this.createdAt;
    return data;
  }
}