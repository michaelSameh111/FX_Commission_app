class AboutUsModel {
  String? status;
  Pageee? page;
  List<PageMetas>? pageMetas;
  List<AdvertisingBanners>? advertisingBanners;
  Null? vision;
  PageMetas? mission;

  AboutUsModel(
      {this.status,
        this.page,
        this.pageMetas,
        this.advertisingBanners,
        this.vision,
        this.mission});

  AboutUsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    page = json['page'] != null ? new Pageee.fromJson(json['page']) : null;
    if (json['page metas'] != null) {
      pageMetas = <PageMetas>[];
      json['page metas'].forEach((v) {
        pageMetas!.add(new PageMetas.fromJson(v));
      });
    }
    if (json['advertising banners'] != null) {
      advertisingBanners = <AdvertisingBanners>[];
      json['advertising banners'].forEach((v) {
        advertisingBanners!.add(new AdvertisingBanners.fromJson(v));
      });
    }
    vision = json['vision'];
    mission = json['mission'] != null
        ? new PageMetas.fromJson(json['mission'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.page != null) {
      data['page'] = this.page!.toJson();
    }
    if (this.pageMetas != null) {
      data['page metas'] = this.pageMetas!.map((v) => v.toJson()).toList();
    }
    if (this.advertisingBanners != null) {
      data['advertising banners'] =
          this.advertisingBanners!.map((v) => v.toJson()).toList();
    }
    data['vision'] = this.vision;
    if (this.mission != null) {
      data['mission'] = this.mission!.toJson();
    }
    return data;
  }
}

class Pageee {
  String? title;
  String? description;

  Pageee({this.title, this.description});

  Pageee.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
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

class AdvertisingBanners {
  String? image;
  String? imageUrl;
  String? websiteBanner;
  String? bannerLocation;
  String? status;

  AdvertisingBanners(
      {this.image,
        this.imageUrl,
        this.websiteBanner,
        this.bannerLocation,
        this.status});

  AdvertisingBanners.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    imageUrl = json['image_url'];
    websiteBanner = json['website_banner'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['image_url'] = this.imageUrl;
    data['website_banner'] = this.websiteBanner;
    data['banner_location'] = this.bannerLocation;
    data['status'] = this.status;
    return data;
  }
}