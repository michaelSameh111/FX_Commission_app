class AnalysisAndInsightsModel {
  String? status;
  Insights? insights;

  AnalysisAndInsightsModel({this.status, this.insights});

  AnalysisAndInsightsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    insights = json['insights'] != null
        ? new Insights.fromJson(json['insights'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.insights != null) {
      data['insights'] = this.insights!.toJson();
    }
    return data;
  }
}

class Insights {
  int? id;
  String? title;
  String? category;
  String? createdBy;
  String? userImage;
  String? image;
  String? status;
  String? createdAt;

  Insights(
      {this.id,
        this.title,
        this.category,
        this.createdBy,
        this.userImage,
        this.image,
        this.status,
        this.createdAt});

  Insights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
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
    data['category'] = this.category;
    data['created_by'] = this.createdBy;
    data['user image'] = this.userImage;
    data['image'] = this.image;
    data['status'] = this.status;
    data['created at'] = this.createdAt;
    return data;
  }
}