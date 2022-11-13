import 'package:cozy_house/models/city_model.dart';
import 'package:cozy_house/models/space_model.dart';
import 'package:cozy_house/r.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<CityModel> dataCity = [
    CityModel(cityName: "Jakarta", cityAssets: MainAssets.r_1),
    CityModel(cityName: "Bandung", cityAssets: MainAssets.r_2),
    CityModel(cityName: "Surabaya", cityAssets: MainAssets.r_3)
  ];
  List<SpaceModel> dataSpace = [
    SpaceModel(
      spaceName: "Kuretakeso Hott",
      spaceAssets: MainAssets.r_4,
      price: "52",
      duration: "month",
      address: "Bandung, Germany",
      rating: "4",
    ),
    SpaceModel(
      spaceName: "Roemah Nenek",
      spaceAssets: MainAssets.r_5,
      price: "32",
      duration: "month",
      address: "Seattle, Bogor",
      rating: "4",
    ),
    SpaceModel(
      spaceName: "Darrling How",
      spaceAssets: MainAssets.r_6,
      price: "82",
      duration: "month",
      address: "Jakarta, Indonesia",
      rating: "4",
    ),
  ];
}
