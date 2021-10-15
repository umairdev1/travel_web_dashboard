import 'package:flutter/material.dart';

class PlaceInfo {
  final String location, image, name;
  final double star;

  PlaceInfo({
    required this.name,
    required this.image,
    required this.location,
    required this.star,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/images/mount_forel.jpg',
    location: 'Greenland',
    name: 'Mount Forel',
    star: 4.8,
  ),
  PlaceInfo(
    image: 'assets/images/eco_camping.jpg',
    location: 'Patagonia',
    name: 'Eco Camping',
    star: 4.5,
  ),
  PlaceInfo(
    image: 'assets/images/mount_everest.jpg',
    location: 'Nepal',
    name: 'Mount Everest',
    star: 4.7,
  ),
];
