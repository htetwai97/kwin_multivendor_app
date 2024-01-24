class GetTreatmentListResponse {
  bool? success;
  int? count;
  MetadataVO? mMetadata;
  List<TreatmentVO>? treatmentList;

  GetTreatmentListResponse(
      {this.success, this.count, this.mMetadata, this.treatmentList});

  GetTreatmentListResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    mMetadata = json['_metadata'] != null
        ? new MetadataVO.fromJson(json['_metadata'])
        : null;
    if (json['list'] != null) {
      treatmentList = <TreatmentVO>[];
      json['list'].forEach((v) {
        treatmentList!.add(new TreatmentVO.fromJson(v));
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
    if (this.treatmentList != null) {
      data['list'] = this.treatmentList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MetadataVO {
  int? currentPage;
  int? perPage;
  int? pageCount;
  int? totalCount;

  MetadataVO({this.currentPage, this.perPage, this.pageCount, this.totalCount});

  MetadataVO.fromJson(Map<String, dynamic> json) {
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

class TreatmentVO {
  String? sId;
  String? code;
  String? name;
  String? bodyParts;
  String? description;
  bool? isDeleted;
  int? iV;

  TreatmentVO(
      {this.sId,
      this.code,
      this.name,
      this.bodyParts,
      this.description,
      this.isDeleted,
      this.iV});

  TreatmentVO.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    code = json['code'];
    name = json['name'];
    bodyParts = json['bodyParts'];
    description = json['description'];
    isDeleted = json['isDeleted'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['bodyParts'] = this.bodyParts;
    data['description'] = this.description;
    data['isDeleted'] = this.isDeleted;
    data['__v'] = this.iV;
    return data;
  }
}
