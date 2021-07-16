class Restaurant {
  String? id;
  String? name;
  String? description;
  String? address;
  String? phone;

  Restaurant({this.id, this.name, this.description, this.address, this.phone});

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    address = json['address'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['address'] = address;
    data['phone'] = phone;
    return data;
  }
}
