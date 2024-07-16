class CryptoNewsModel {
  String? status;
  List<CryptoNews>? cryptoNews;

  CryptoNewsModel({this.status, this.cryptoNews});

  CryptoNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['crypto news'] != null) {
      cryptoNews = <CryptoNews>[];
      json['crypto news'].forEach((v) {
        cryptoNews!.add(new CryptoNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.cryptoNews != null) {
      data['crypto news'] = this.cryptoNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CryptoNews {
  int? id;
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;
  String? fullDescription;

  CryptoNews(
      {this.id,
        this.createdBy,
        this.createdAt,
        this.image,
        this.title,
        this.description,
        this.fullDescription});

  CryptoNews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdBy = json['created by'];
    createdAt = json['created at'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
    fullDescription = json['full description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created by'] = this.createdBy;
    data['created at'] = this.createdAt;
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
    data['full description'] = this.fullDescription;
    return data;
  }
}