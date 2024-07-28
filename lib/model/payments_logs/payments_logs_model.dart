class PaymentsLogsModel {
  String? status;
  List<PaymentHistory>? paymentHistory;

  PaymentsLogsModel({this.status, this.paymentHistory});

  PaymentsLogsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['payment_history'] != null) {
      paymentHistory = <PaymentHistory>[];
      json['payment_history'].forEach((v) {
        paymentHistory!.add(new PaymentHistory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.paymentHistory != null) {
      data['payment_history'] =
          this.paymentHistory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentHistory {
  int? id;
  int? user;
  String? action;
  dynamic withdrawalMethod;
  String? start;
  String? amount;
  String? finals;
  String? description;
  String? reason;
  int? createdBy;
  dynamic showInHome;
  String? status;
  String? createdAt;
  String? updatedAt;

  PaymentHistory(
      {this.id,
        this.user,
        this.action,
        this.withdrawalMethod,
        this.start,
        this.amount,
        this.finals,
        this.description,
        this.reason,
        this.createdBy,
        this.showInHome,
        this.status,
        this.createdAt,
        this.updatedAt});

  PaymentHistory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    action = json['action'];
    withdrawalMethod = json['withdrawal_method'];
    start = json['start'];
    amount = json['amount'];
    finals = json['final'];
    description = json['description'];
    reason = json['reason'];
    createdBy = json['created_by'];
    showInHome = json['show_in_home'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['action'] = this.action;
    data['withdrawal_method'] = this.withdrawalMethod;
    data['start'] = this.start;
    data['amount'] = this.amount;
    data['final'] = this.finals;
    data['description'] = this.description;
    data['reason'] = this.reason;
    data['created_by'] = this.createdBy;
    data['show_in_home'] = this.showInHome;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
