// class LoginModel {
//   String? accessToken;
//   String? tokenType;
//   User? user;
//   int? expiresIn;
//
//   LoginModel({this.accessToken, this.tokenType, this.user, this.expiresIn});
//
//   LoginModel.fromJson(Map<String, dynamic> json) {
//     accessToken = json['access_token'];
//     tokenType = json['token_type'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//     expiresIn = json['expires_in'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['access_token'] = this.accessToken;
//     data['token_type'] = this.tokenType;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     data['expires_in'] = this.expiresIn;
//     return data;
//   }
// }
//
// class User {
//   int? id;
//   int? tenantId;
//   int? idAdminGroup;
//   String? username;
//   String? password;
//   String? trPass;
//   String? firstname;
//   String? middlename;
//   String? lastname;
//   String? image;
//   String? address;
//   String? city;
//   String? mobile;
//   String? email;
//   String? createdAt;
//   String? lastLoginTime;
//   String? status;
//   String? randomNumber;
//   Null? countryId;
//   int? countyId;
//   int? subcountyId;
//   Null? weatherDivisionId;
//   int? createdBy;
//   String? updatedAt;
//   int? updatedBy;
//   Null? otp;
//
//   User(
//       {this.id,
//         this.tenantId,
//         this.idAdminGroup,
//         this.username,
//         this.password,
//         this.trPass,
//         this.firstname,
//         this.middlename,
//         this.lastname,
//         this.image,
//         this.address,
//         this.city,
//         this.mobile,
//         this.email,
//         this.createdAt,
//         this.lastLoginTime,
//         this.status,
//         this.randomNumber,
//         this.countryId,
//         this.countyId,
//         this.subcountyId,
//         this.weatherDivisionId,
//         this.createdBy,
//         this.updatedAt,
//         this.updatedBy,
//         this.otp});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     tenantId = json['tenant_id'];
//     idAdminGroup = json['id_admin_group'];
//     username = json['username'];
//     password = json['password'];
//     trPass = json['tr_pass'];
//     firstname = json['firstname'];
//     middlename = json['middlename'];
//     lastname = json['lastname'];
//     image = json['image'];
//     address = json['address'];
//     city = json['city'];
//     mobile = json['mobile'];
//     email = json['email'];
//     createdAt = json['created_at'];
//     lastLoginTime = json['last_login_time'];
//     status = json['status'];
//     randomNumber = json['random_number'];
//     countryId = json['country_id'];
//     countyId = json['county_id'];
//     subcountyId = json['subcounty_id'];
//     weatherDivisionId = json['weather_division_id'];
//     createdBy = json['created_by'];
//     updatedAt = json['updated_at'];
//     updatedBy = json['updated_by'];
//     otp = json['otp'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['tenant_id'] = this.tenantId;
//     data['id_admin_group'] = this.idAdminGroup;
//     data['username'] = this.username;
//     data['password'] = this.password;
//     data['tr_pass'] = this.trPass;
//     data['firstname'] = this.firstname;
//     data['middlename'] = this.middlename;
//     data['lastname'] = this.lastname;
//     data['image'] = this.image;
//     data['address'] = this.address;
//     data['city'] = this.city;
//     data['mobile'] = this.mobile;
//     data['email'] = this.email;
//     data['created_at'] = this.createdAt;
//     data['last_login_time'] = this.lastLoginTime;
//     data['status'] = this.status;
//     data['random_number'] = this.randomNumber;
//     data['country_id'] = this.countryId;
//     data['county_id'] = this.countyId;
//     data['subcounty_id'] = this.subcountyId;
//     data['weather_division_id'] = this.weatherDivisionId;
//     data['created_by'] = this.createdBy;
//     data['updated_at'] = this.updatedAt;
//     data['updated_by'] = this.updatedBy;
//     data['otp'] = this.otp;
//     return data;
//   }
// }

class LoginModel {
  String? accessToken;
  String? tokenType;
  User? user;
  int? expiresIn;

  LoginModel({this.accessToken, this.tokenType, this.user, this.expiresIn});

  LoginModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['expires_in'] = this.expiresIn;
    return data;
  }
}

class User {
  int? id;
  int? tenantId;
  int? idAdminGroup;
  String? username;
  String? password;
  String? trPass;
  String? firstname;
  String? middlename;
  String? lastname;
  String? image;
  String? address;
  String? city;
  String? mobile;
  String? email;
  String? createdAt;
  String? lastLoginTime;
  String? status;
  String? randomNumber;
  Null? countryId;
  int? countyId;
  int? subcountyId;
  Null? weatherDivisionId;
  int? createdBy;
  String? updatedAt;
  int? updatedBy;
  String? otp;

  User(
      {this.id,
        this.tenantId,
        this.idAdminGroup,
        this.username,
        this.password,
        this.trPass,
        this.firstname,
        this.middlename,
        this.lastname,
        this.image,
        this.address,
        this.city,
        this.mobile,
        this.email,
        this.createdAt,
        this.lastLoginTime,
        this.status,
        this.randomNumber,
        this.countryId,
        this.countyId,
        this.subcountyId,
        this.weatherDivisionId,
        this.createdBy,
        this.updatedAt,
        this.updatedBy,
        this.otp});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tenantId = json['tenant_id'];
    idAdminGroup = json['id_admin_group'];
    username = json['username'];
    password = json['password'];
    trPass = json['tr_pass'];
    firstname = json['firstname'];
    middlename = json['middlename'];
    lastname = json['lastname'];
    image = json['image'];
    address = json['address'];
    city = json['city'];
    mobile = json['mobile'];
    email = json['email'];
    createdAt = json['created_at'];
    lastLoginTime = json['last_login_time'];
    status = json['status'];
    randomNumber = json['random_number'];
    countryId = json['country_id'];
    countyId = json['county_id'];
    subcountyId = json['subcounty_id'];
    weatherDivisionId = json['weather_division_id'];
    createdBy = json['created_by'];
    updatedAt = json['updated_at'];
    updatedBy = json['updated_by'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tenant_id'] = this.tenantId;
    data['id_admin_group'] = this.idAdminGroup;
    data['username'] = this.username;
    data['password'] = this.password;
    data['tr_pass'] = this.trPass;
    data['firstname'] = this.firstname;
    data['middlename'] = this.middlename;
    data['lastname'] = this.lastname;
    data['image'] = this.image;
    data['address'] = this.address;
    data['city'] = this.city;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['last_login_time'] = this.lastLoginTime;
    data['status'] = this.status;
    data['random_number'] = this.randomNumber;
    data['country_id'] = this.countryId;
    data['county_id'] = this.countyId;
    data['subcounty_id'] = this.subcountyId;
    data['weather_division_id'] = this.weatherDivisionId;
    data['created_by'] = this.createdBy;
    data['updated_at'] = this.updatedAt;
    data['updated_by'] = this.updatedBy;
    data['otp'] = this.otp;
    return data;
  }
}
