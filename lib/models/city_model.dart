class CityModel {
  String? cityName;
  String? cityAssets;

  CityModel({this.cityName, this.cityAssets});

  CityModel.fromJson(Map<String, dynamic> json) {
    cityName = json['city_name'];
    cityAssets = json['city_assets'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['city_name'] = cityName;
    data['city_assets'] = cityAssets;
    return data;
  }
}
