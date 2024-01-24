import 'package:kwin_multivendor_app/data/vos/service_meta_data_vo.dart';
import 'package:kwin_multivendor_app/data/vos/service_vo.dart';

class GetTreatmentResponse {
  bool? success;
  int? count;
  ServiceMetaDataVO? mMetadata;
  List<ServiceVO>? data;

  GetTreatmentResponse({this.success, this.count, this.mMetadata, this.data});

  GetTreatmentResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    mMetadata = json['_metadata'] != null
        ? new ServiceMetaDataVO.fromJson(json['_metadata'])
        : null;
    if (json['data'] != null) {
      data = <ServiceVO>[];
      json['data'].forEach((v) {
        data!.add(new ServiceVO.fromJson(v));
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
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
