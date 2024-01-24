class GetMedicineListResponse {
  bool? success;
  int? count;
  Metadata? mMetadata;
  List<MedicineVO>? medicineList;

  GetMedicineListResponse(
      {this.success, this.count, this.mMetadata, this.medicineList});

  GetMedicineListResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    mMetadata = json['_metadata'] != null
        ? new Metadata.fromJson(json['_metadata'])
        : null;
    if (json['list'] != null) {
      medicineList = <MedicineVO>[];
      json['list'].forEach((v) {
        medicineList!.add(new MedicineVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['count'] = this.count;
    if (this.mMetadata != null) {
      data['_metadata'] = this.mMetadata!.toJson();
    }
    if (this.medicineList != null) {
      data['list'] = this.medicineList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Metadata {
  int? currentPage;
  int? perPage;
  int? pageCount;
  int? totalCount;

  Metadata({this.currentPage, this.perPage, this.pageCount, this.totalCount});

  Metadata.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    perPage = json['per_page'];
    pageCount = json['page_count'];
    totalCount = json['total_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['per_page'] = this.perPage;
    data['page_count'] = this.pageCount;
    data['total_count'] = this.totalCount;
    return data;
  }
}

class MedicineVO {
  String? sId;
  String? code;
  String? name;
  String? description;
  bool? isDeleted;
  RelatedCategory? relatedCategory;
  RelatedBrand? relatedBrand;
  RelatedSubCategory? relatedSubCategory;
  int? iV;

  MedicineVO(
      {this.sId,
      this.code,
      this.name,
      this.description,
      this.isDeleted,
      this.relatedCategory,
      this.relatedBrand,
      this.relatedSubCategory,
      this.iV});

  MedicineVO.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    isDeleted = json['isDeleted'];
    relatedCategory = json['relatedCategory'] != null
        ? new RelatedCategory.fromJson(json['relatedCategory'])
        : null;
    relatedBrand = json['relatedBrand'] != null
        ? new RelatedBrand.fromJson(json['relatedBrand'])
        : null;
    relatedSubCategory = json['relatedSubCategory'] != null
        ? new RelatedSubCategory.fromJson(json['relatedSubCategory'])
        : null;
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['isDeleted'] = this.isDeleted;
    if (this.relatedCategory != null) {
      data['relatedCategory'] = this.relatedCategory!.toJson();
    }
    if (this.relatedBrand != null) {
      data['relatedBrand'] = this.relatedBrand!.toJson();
    }
    if (this.relatedSubCategory != null) {
      data['relatedSubCategory'] = this.relatedSubCategory!.toJson();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class RelatedCategory {
  String? sId;
  bool? isDeleted;
  String? code;
  String? name;
  String? description;
  String? createdAt;
  int? iV;

  RelatedCategory(
      {this.sId,
      this.isDeleted,
      this.code,
      this.name,
      this.description,
      this.createdAt,
      this.iV});

  RelatedCategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isDeleted = json['isDeleted'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['isDeleted'] = this.isDeleted;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class RelatedBrand {
  String? sId;
  String? code;
  String? name;
  String? description;
  bool? isDeleted;
  String? createdAt;
  int? iV;
  String? category;
  String? subCategory;

  RelatedBrand(
      {this.sId,
      this.code,
      this.name,
      this.description,
      this.isDeleted,
      this.createdAt,
      this.iV,
      this.category,
      this.subCategory});

  RelatedBrand.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    iV = json['__v'];
    category = json['category'];
    subCategory = json['subCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    data['category'] = this.category;
    data['subCategory'] = this.subCategory;
    return data;
  }
}

class RelatedSubCategory {
  String? sId;
  String? code;
  String? name;
  String? description;
  String? relatedCategory;
  bool? isDeleted;
  String? createdAt;
  int? iV;

  RelatedSubCategory(
      {this.sId,
      this.code,
      this.name,
      this.description,
      this.relatedCategory,
      this.isDeleted,
      this.createdAt,
      this.iV});

  RelatedSubCategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    relatedCategory = json['relatedCategory'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['relatedCategory'] = this.relatedCategory;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}
