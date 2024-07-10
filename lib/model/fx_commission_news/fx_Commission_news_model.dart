// class FxCommNewsModel {
//   String? status;
//   OtherNews? stocksNews;
//   List<OtherNews>? otherNews;
//
//   FxCommNewsModel({this.status, this.stocksNews, this.otherNews});
//
//   FxCommNewsModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     stocksNews = json['stocks news'] != null
//         ? new OtherNews.fromJson(json['stocks news'])
//         : null;
//     if (json['other news'] != null) {
//       otherNews = <OtherNews>[];
//       json['other news'].forEach((v) {
//         otherNews!.add(new OtherNews.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.stocksNews != null) {
//       data['stocks news'] = this.stocksNews!.toJson();
//     }
//     if (this.otherNews != null) {
//       data['other news'] = this.otherNews!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class StocksNews {
//   String? createdBy;
//   String? createdAt;
//   String? image;
//   String? title;
//   String? description;
//
//   StocksNews(
//       {this.createdBy,
//         this.createdAt,
//         this.image,
//         this.title,
//         this.description});
//
//   StocksNews.fromJson(Map<String, dynamic> json) {
//     createdBy = json['created by'];
//     createdAt = json['created at'];
//     image = json['image'];
//     title = json['title'];
//     description = json['description'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['created by'] = this.createdBy;
//     data['created at'] = this.createdAt;
//     data['image'] = this.image;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     return data;
//   }
// }
//
// class OtherNews {
//   String? createdBy;
//   String? createdAt;
//   String? image;
//   String? title;
//   String? description;
//
//   OtherNews(
//       {this.createdBy,
//         this.createdAt,
//         this.image,
//         this.title,
//         this.description});
//
//   OtherNews.fromJson(Map<String, dynamic> json) {
//     createdBy = json['created by'];
//     createdAt = json['created at'];
//     image = json['image'];
//     title = json['title'];
//     description = json['description'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['created by'] = this.createdBy;
//     data['created at'] = this.createdAt;
//     data['image'] = this.image;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     return data;
//   }
// }