class hotel {
  int? id;
  String? name;
  double? longitude;
  double? latitude;
  String? description;
  int? stars;
  String? createdAt;
  String? updatedAt;

  hotel(
      {this.id,
      this.name,
      this.longitude,
      this.latitude,
      this.description,
      this.stars,
      this.createdAt,
      this.updatedAt});

  hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    description = json['description'];
    stars = json['stars'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['description'] = this.description;
    data['stars'] = this.stars;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}