// class AboutUsModel {
//   String? status;
//   Page? page;
//   List<Null>? pageMetas;
//   List<Null>? advertisingBanners;
//   Null? vision;
//   Null? mission;
//
//   AboutUsModel(
//       {this.status,
//         this.page,
//         this.pageMetas,
//         this.advertisingBanners,
//         this.vision,
//         this.mission});
//
//   AboutUsModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     page = json['page'] != null ? new Page.fromJson(json['page']) : null;
//     if (json['page metas'] != null) {
//       pageMetas = <Null>[];
//       json['page metas'].forEach((v) {
//         pageMetas!.add(new Null.fromJson(v));
//       });
//     }
//     if (json['advertising banners'] != null) {
//       advertisingBanners = <Null>[];
//       json['advertising banners'].forEach((v) {
//         advertisingBanners!.add(new Null.fromJson(v));
//       });
//     }
//     vision = json['vision'];
//     mission = json['mission'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.page != null) {
//       data['page'] = this.page!.toJson();
//     }
//     if (this.pageMetas != null) {
//       data['page metas'] = this.pageMetas!.map((v) => v.toJson()).toList();
//     }
//     if (this.advertisingBanners != null) {
//       data['advertising banners'] =
//           this.advertisingBanners!.map((v) => v.toJson()).toList();
//     }
//     data['vision'] = this.vision;
//     data['mission'] = this.mission;
//     return data;
//   }
// }
//
// class Page {
//   String? title;
//   Null? description;
//
//   Page({this.title, this.description});
//
//   Page.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     description = json['description'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['title'] = this.title;
//     data['description'] = this.description;
//     return data;
//   }
// }