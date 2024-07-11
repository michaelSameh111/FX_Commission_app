class FaqsModel {
  String? message;
  Page? page;
  List<Null>? pageMetas;
 // List<Null>? advertisingBanners;
  List<Faqs>? faqs;

  FaqsModel(
      {this.message,
        this.page,
        this.pageMetas,
       // this.advertisingBanners,
        this.faqs});

  FaqsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
    // if (json['page metas'] != null) {
    //   pageMetas = <Null>[];
    //   json['page metas'].forEach((v) {
    //     pageMetas!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['advertising banners'] != null) {
    //   advertisingBanners = <Null>[];
    //   json['advertising banners'].forEach((v) {
    //     advertisingBanners!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['faqs'] != null) {
      faqs = <Faqs>[];
      json['faqs'].forEach((v) {
        faqs!.add(new Faqs.fromJson(v));
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
    // if (this.advertisingBanners != null) {
    //   data['advertising banners'] =
    //       this.advertisingBanners!.map((v) => v.toJson()).toList();
    // }
    if (this.faqs != null) {
      data['faqs'] = this.faqs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Page {
  String? title;
  String? description;

  Page({this.title, this.description});

  Page.fromJson(Map<String, dynamic> json) {
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

class Faqs {
  String? question;
  String? answer;

  Faqs({this.question, this.answer});

  Faqs.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}