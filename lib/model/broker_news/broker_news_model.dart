class BrokerNewsModel {
  String? status;
  List<StocksNews>? stocksNews;

  BrokerNewsModel({this.status, this.stocksNews});

  BrokerNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['stocks news'] != null) {
      stocksNews = <StocksNews>[];
      json['stocks news'].forEach((v) {
        stocksNews!.add(new StocksNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.stocksNews != null) {
      data['stocks news'] = this.stocksNews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StocksNews {
  String? createdBy;
  String? createdAt;
  String? image;
  String? title;
  String? description;

  StocksNews(
      {this.createdBy,
        this.createdAt,
        this.image,
        this.title,
        this.description});

  StocksNews.fromJson(Map<String, dynamic> json) {
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