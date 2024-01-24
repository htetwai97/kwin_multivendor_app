class ServiceVO {
  String? id;
  String? image;
  String? description;
  String? title;

  ServiceVO({this.id, this.image, this.description, this.title});

  ServiceVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    description = json['description'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['description'] = this.description;
    data['title'] = this.title;
    return data;
  }
}
