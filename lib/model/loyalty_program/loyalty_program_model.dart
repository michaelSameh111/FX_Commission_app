class LoyaltyProgramModel {
  String? message;
  Page? page;
  List<PageMetas>? pageMetas;
 // List<Null>? advertisingBanners;
  Null? video;
  List<LoyaltyProgramStages>? loyaltyProgramStages;

  LoyaltyProgramModel(
      {this.message,
        this.page,
        this.pageMetas,
        //this.advertisingBanners,
        this.video,
        this.loyaltyProgramStages});

  LoyaltyProgramModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
    if (json['page metas'] != null) {
      pageMetas = <PageMetas>[];
      json['page metas'].forEach((v) {
        pageMetas!.add(new PageMetas.fromJson(v));
      });
    }
    // if (json['advertising banners'] != null) {
    //   advertisingBanners = <Null>[];
    //   json['advertising banners'].forEach((v) {
    //     advertisingBanners!.add(new Null.fromJson(v));
    //   });
    // }
    video = json['video'];
    if (json['loyalty program stages'] != null) {
      loyaltyProgramStages = <LoyaltyProgramStages>[];
      json['loyalty program stages'].forEach((v) {
        loyaltyProgramStages!.add(new LoyaltyProgramStages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.page != null) {
      data['page'] = this.page!.toJson();
    }
    if (this.pageMetas != null) {
      data['page metas'] = this.pageMetas!.map((v) => v.toJson()).toList();
    }
    // if (this.advertisingBanners != null) {
    //   data['advertising banners'] =
    //       this.advertisingBanners!.map((v) => v.toJson()).toList();
    // }
    data['video'] = this.video;
    if (this.loyaltyProgramStages != null) {
      data['loyalty program stages'] =
          this.loyaltyProgramStages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Page {
  String? title;
  String? description;
  String? image;

  Page({this.title, this.description, this.image});

  Page.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}

class PageMetas {
  int? id;
  int? page;
  String? key;
  String? value;
  String? keyAr;
  String? valueAr;
  String? createdAt;
  String? updatedAt;

  PageMetas(
      {this.id,
        this.page,
        this.key,
        this.value,
        this.keyAr,
        this.valueAr,
        this.createdAt,
        this.updatedAt});

  PageMetas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    page = json['page'];
    key = json['key'];
    value = json['value'];
    keyAr = json['key_ar'];
    valueAr = json['value_ar'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['page'] = this.page;
    data['key'] = this.key;
    data['value'] = this.value;
    data['key_ar'] = this.keyAr;
    data['value_ar'] = this.valueAr;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class LoyaltyProgramStages {
  String? title;
  String? points;
  String? cashExchange;

  LoyaltyProgramStages({this.title, this.points, this.cashExchange});

  LoyaltyProgramStages.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    points = json['points'];
    cashExchange = json['cash exchange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['points'] = this.points;
    data['cash exchange'] = this.cashExchange;
    return data;
  }
}