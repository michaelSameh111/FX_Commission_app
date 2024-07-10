class AdvertiseWithUsModel {
  String? message;
  AdvPage? page;
 // List<Null>? pageMetas;
  List<AdvertisingBanners>? advertisingBanners;

  AdvertiseWithUsModel(
      {this.message,
        this.page,
        //this.pageMetas,
        this.advertisingBanners});

  AdvertiseWithUsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    page = json['page'] != null ? new AdvPage.fromJson(json['page']) : null;
    // if (json['page metas'] != null) {
    //   pageMetas = <Null>[];
    //   json['page metas'].forEach((v) {
    //     pageMetas!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['advertising banners'] != null) {
      advertisingBanners = <AdvertisingBanners>[];
      json['advertising banners'].forEach((v) {
        advertisingBanners!.add(new AdvertisingBanners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.page != null) {
      data['page'] = this.page!.toJson();
    }
    // if (this.pageMetas != null) {
    //   data['page metas'] = this.pageMetas!.map((v) => v.toJson()).toList();
    // }
    if (this.advertisingBanners != null) {
      data['advertising banners'] =
          this.advertisingBanners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AdvPage {
  String? title;
  String? description;

  AdvPage({this.title, this.description});

  AdvPage.fromJson(Map<String, dynamic> json) {
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

class AdvertisingBanners {
  String? image;
  String? imageUrl;
  String? websiteBanner;
  Null? bannerLocation;
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