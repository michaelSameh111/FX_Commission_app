class TradingAccountsModel {
  List<Accounts>? accounts;

  TradingAccountsModel({this.accounts});

  TradingAccountsModel.fromJson(Map<String, dynamic> json) {
    if (json['accounts'] != null) {
      accounts = <Accounts>[];
      json['accounts'].forEach((v) {
        accounts!.add(new Accounts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accounts != null) {
      data['accounts'] = this.accounts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Accounts {
  String? broker;
  String? accountNumber;
  String? accountStatus;
  String? image;

  Accounts({this.broker, this.accountNumber, this.accountStatus, this.image});

  Accounts.fromJson(Map<String, dynamic> json) {
    broker = json['broker'];
    accountNumber = json['account_number'];
    accountStatus = json['account_status'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['broker'] = this.broker;
    data['account_number'] = this.accountNumber;
    data['account_status'] = this.accountStatus;
    data['image'] = this.image;
    return data;
  }
}