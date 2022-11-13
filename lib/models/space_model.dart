class SpaceModel {
  String? spaceName;
  String? price;
  String? address;
  String? rating;
  String? duration;
  String? spaceAssets;

  SpaceModel(
      {this.spaceName,
      this.spaceAssets,
      this.price,
      this.address,
      this.duration,
      this.rating});

  SpaceModel.fromJson(Map<String, dynamic> json) {
    spaceName = json['space_name'];
    spaceAssets = json['space_assets'];
    price = json['price'];
    address = json['address'];
    rating = json['rating'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['space_name'] = spaceName;
    data['city_assets'] = spaceAssets;
    data['price'] = price;
    data['address'] = address;
    data['rating'] = rating;
    data['duration'] = duration;
    return data;
  }
}
