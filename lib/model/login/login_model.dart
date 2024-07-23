class LoginDataModel {
  String? accessToken;
  int? expiresIn;
  String? tokenType;
  int? userId;
  String? userName;
  String? userFirstName;
  String? userLastName;
  String? userPhone;
  String? userEmail;
  String? userCountry;
  String? userRole;
  String? userBalance;
  String? userImage;

  LoginDataModel(
      {this.accessToken,
        this.expiresIn,
        this.tokenType,
        this.userId,
        this.userName,
        this.userFirstName,
        this.userLastName,
        this.userPhone,
        this.userEmail,
        this.userCountry,
        this.userRole,
        this.userBalance,
        this.userImage});

  LoginDataModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    tokenType = json['token_type'];
    userId = json['user_id'];
    userName = json['user_name'];
    userFirstName = json['user_first_name'];
    userLastName = json['user_last_name'];
    userPhone = json['user_phone'];
    userEmail = json['user_email'];
    userCountry = json['user_country'];
    userRole = json['user_role'];
    userBalance = json['user_balance'];
    userImage = json['user_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['expires_in'] = this.expiresIn;
    data['token_type'] = this.tokenType;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_first_name'] = this.userFirstName;
    data['user_last_name'] = this.userLastName;
    data['user_phone'] = this.userPhone;
    data['user_email'] = this.userEmail;
    data['user_country'] = this.userCountry;
    data['user_role'] = this.userRole;
    data['user_balance'] = this.userBalance;
    data['user_image'] = this.userImage;
    return data;
  }
}