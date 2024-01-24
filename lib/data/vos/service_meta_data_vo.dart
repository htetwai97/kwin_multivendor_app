class ServiceMetaDataVO {
  String? currentPage;
  String? perPage;
  double? pageCount;
  int? totalCount;

  ServiceMetaDataVO({
    this.currentPage,
    this.perPage,
    this.pageCount,
    this.totalCount,
  });

  ServiceMetaDataVO.fromJson(Map<String, dynamic> json) {
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
