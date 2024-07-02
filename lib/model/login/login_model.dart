class LoginDataModel {
  String? accessToken;
  int? expiresIn;
  String? tokenType;
  int? userId;
  String? userName;
  String? userPhone;
  String? userRole;

  LoginDataModel(
      {this.accessToken,
        this.expiresIn,
        this.tokenType,
        this.userId,
        this.userName,
        this.userPhone,
        this.userRole});

  LoginDataModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    tokenType = json['token_type'];
    userId = json['user_id'];
    userName = json['user_name'];
    userPhone = json['user_phone'];
    userRole = json['user_role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['expires_in'] = this.expiresIn;
    data['token_type'] = this.tokenType;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_phone'] = this.userPhone;
    data['user_role'] = this.userRole;
    return data;
  }
}