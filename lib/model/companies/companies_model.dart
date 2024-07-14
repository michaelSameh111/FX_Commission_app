class CompaniesModel {
  String? status;
  List<Companies>? companies;

  CompaniesModel({this.status, this.companies});

  CompaniesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['companies'] != null) {
      companies = <Companies>[];
      json['companies'].forEach((v) {
        companies!.add(new Companies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.companies != null) {
      data['companies'] = this.companies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Companies {
  int? id;
  String? title;
  String? logo;
  int? reviews;
  Null? rate;
  Null? highlights;

  Companies(
      {this.id,
        this.title,
        this.logo,
        this.reviews,
        this.rate,
        this.highlights});

  Companies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    logo = json['logo'];
    reviews = json['reviews'];
    rate = json['rate'];
    highlights = json['highlights'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['logo'] = this.logo;
    data['reviews'] = this.reviews;
    data['rate'] = this.rate;
    data['highlights'] = this.highlights;
    return data;
  }
}