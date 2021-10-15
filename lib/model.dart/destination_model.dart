import 'package:flutter/material.dart';

class DistInfo {
  final String location, image, name;
  final double star, price;

  DistInfo({
    required this.name,
    required this.image,
    required this.location,
    required this.star,
    required this.price,
  });
}

List distination = [
  DistInfo(
    image: 'assets/distination/Redwood_Forest.jpg',
    location: 'California',
    name: 'Redwood Forest',
    star: 4.8,
    price: 150,
  ),
  DistInfo(
    image: 'assets/distination/ice_land.jpg',
    location: 'canyon',
    name: 'Ice Land',
    star: 4.5,
    price: 100,
  ),
  DistInfo(
    image: 'assets/distination/Sahale_Glacier.jpg',
    location: 'Kasta Rika',
    name: 'Sahale Glacier',
    star: 4.6,
    price: 130,
  ),
];
