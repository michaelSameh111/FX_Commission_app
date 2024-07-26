class AddTradingAccountModel {
  String? status;
  String? message;

  AddTradingAccountModel({this.status, this.message});

  AddTradingAccountModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

// class Companies {
//   String? companyTitle;
//   int? companyId;
//
//   Companies({this.companyTitle, this.companyId});
//
//   Companies.fromJson(Map<String, dynamic> json) {
//     companyTitle = json['company title'];
//     companyId = json['company id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['company title'] = this.companyTitle;
//     data['company id'] = this.companyId;
//     return data;
//   }
// }