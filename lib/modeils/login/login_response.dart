class LoginResponse {
  String? token;
  String? fbToken;
  String? type;
  String? message;
  User? user;
  Null? vehicle;
  Null? vendor;

  LoginResponse(
      {this.token,
        this.fbToken,
        this.type,
        this.message,
        this.user,
        this.vehicle,
        this.vendor});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    fbToken = json['fb_token'];
    type = json['type'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    vehicle = json['vehicle'];
    vendor = json['vendor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['fb_token'] = this.fbToken;
    data['type'] = this.type;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['vehicle'] = this.vehicle;
    data['vendor'] = this.vendor;
    return data;
  }
}

class User {
  int? id;
  String? code;
  String? name;
  String? email;
  String? phone;
  String? countryCode;
  int? commission;
  Null? emailVerifiedAt;
  Null? vendorId;
  int? isActive;
  int? isOnline;
  Null? creatorId;
  String? language;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  bool? hasMultipleVendors;
  String? roleName;
  int? roleId;
  String? formattedDate;
  String? photo;
  String? rating;
  int? assignedOrders;
  String? rawPhone;
  bool? isTaxiDriver;
  bool? documentRequested;
  bool? pendingDocumentApproval;
  List<Roles>? roles;
  List<Null>? media;

  User(
      {this.id,
        this.code,
        this.name,
        this.email,
        this.phone,
        this.countryCode,
        this.commission,
        this.emailVerifiedAt,
        this.vendorId,
        this.isActive,
        this.isOnline,
        this.creatorId,
        this.language,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.hasMultipleVendors,
        this.roleName,
        this.roleId,
        this.formattedDate,
        this.photo,
        this.rating,
        this.assignedOrders,
        this.rawPhone,
        this.isTaxiDriver,
        this.documentRequested,
        this.pendingDocumentApproval,
        this.roles,
        this.media});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    countryCode = json['country_code'];
    commission = json['commission'];
    emailVerifiedAt = json['email_verified_at'];
    vendorId = json['vendor_id'];
    isActive = json['is_active'];
    isOnline = json['is_online'];
    creatorId = json['creator_id'];
    language = json['language'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    hasMultipleVendors = json['has_multiple_vendors'];
    roleName = json['role_name'];
    roleId = json['role_id'];
    formattedDate = json['formatted_date'];
    photo = json['photo'];
    rating = json['rating'];
    assignedOrders = json['assigned_orders'];
    rawPhone = json['raw_phone'];
    isTaxiDriver = json['is_taxi_driver'];
    documentRequested = json['document_requested'];
    pendingDocumentApproval = json['pending_document_approval'];
    if (json['roles'] != null) {
      roles = <Roles>[];
      json['roles'].forEach((v) {
        roles!.add(new Roles.fromJson(v));
      });
    }
    if (json['media'] != null) {
      media = <Null>[];
      json['media'].forEach((v) {
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['country_code'] = this.countryCode;
    data['commission'] = this.commission;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['vendor_id'] = this.vendorId;
    data['is_active'] = this.isActive;
    data['is_online'] = this.isOnline;
    data['creator_id'] = this.creatorId;
    data['language'] = this.language;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['has_multiple_vendors'] = this.hasMultipleVendors;
    data['role_name'] = this.roleName;
    data['role_id'] = this.roleId;
    data['formatted_date'] = this.formattedDate;
    data['photo'] = this.photo;
    data['rating'] = this.rating;
    data['assigned_orders'] = this.assignedOrders;
    data['raw_phone'] = this.rawPhone;
    data['is_taxi_driver'] = this.isTaxiDriver;
    data['document_requested'] = this.documentRequested;
    data['pending_document_approval'] = this.pendingDocumentApproval;
    if (this.roles != null) {
      data['roles'] = this.roles!.map((v) => v.toJson()).toList();
    }
    if (this.media != null) {
    }
    return data;
  }
}

class Roles {
  int? id;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Roles(
      {this.id,
        this.name,
        this.guardName,
        this.createdAt,
        this.updatedAt,
        this.pivot});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['guard_name'] = this.guardName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  String? modelType;
  int? modelId;
  int? roleId;

  Pivot({this.modelType, this.modelId, this.roleId});

  Pivot.fromJson(Map<String, dynamic> json) {
    modelType = json['model_type'];
    modelId = json['model_id'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model_type'] = this.modelType;
    data['model_id'] = this.modelId;
    data['role_id'] = this.roleId;
    return data;
  }
}
