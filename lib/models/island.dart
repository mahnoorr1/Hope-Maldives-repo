import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:hop_maldives/models/facilities.dart';
import 'package:hop_maldives/models/review.dart';

class Island {
  final String id;
  final String name;
  final String address;
  final String description;
  final double lat;
  final double lng;
  final List<Review> reviews;
  List<String> images;
  final Facilities facilities;
  final List<String> hotels;
  final List<String> divingDestinations;
  final List<String> excursions;
  final bool isPopular;
  Island({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.lat,
    required this.lng,
    required this.reviews,
    required this.images,
    required this.facilities,
    required this.hotels,
    required this.divingDestinations,
    required this.excursions,
    required this.isPopular,
  });

  Island copyWith({
    String? id,
    String? name,
    String? address,
    String? description,
    double? lat,
    double? lng,
    List<Review>? reviews,
    List<String>? images,
    Facilities? facilities,
    List<String>? hotels,
    List<String>? divingDestinations,
    List<String>? excursions,
    bool? isPopular,
  }) {
    return Island(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      description: description ?? this.description,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      reviews: reviews ?? this.reviews,
      images: images ?? this.images,
      facilities: facilities ?? this.facilities,
      hotels: hotels ?? this.hotels,
      divingDestinations: divingDestinations ?? this.divingDestinations,
      excursions: excursions ?? this.excursions,
      isPopular: isPopular ?? this.isPopular,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'description': description,
      'lat': lat,
      'lng': lng,
      'reviews': reviews.map((x) => x.toMap()).toList(),
      'images': images,
      'facilities': facilities.toMap(),
      'hotels': hotels,
      'divingDestinations': divingDestinations,
      'excursions': excursions,
      'isPopular': isPopular,
    };
  }

  factory Island.fromMap(Map<String, dynamic> map) {
    return Island(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      description: map['description'],
      lat: map['lat'],
      lng: map['lng'],
      reviews: List<Review>.from(
        (map['reviews'] as List<dynamic>)
            .map<Review?>((x) => Review.fromMap(x)),
      ).where((element) => element.enabled).toList(),
      images: List<String>.from(map['images']),
      facilities: Facilities.fromMap(map['facilities'] as Map<String, dynamic>),
      hotels: List<String>.from(map['hotels']?.map((x) => x)),
      isPopular: map['isPopular'],
      divingDestinations: List<String>.from(map['divingDestinations'] ?? []),
      excursions: List<String>.from(map['excursions'] ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Island.fromJson(String source) =>
      Island.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Island(id: $id, name: $name, address: $address, description: $description, lat: $lat, lng: $lng, reviews: $reviews, images: $images, facilities: $facilities, hotels: $hotels, divingDestinations: $divingDestinations, excursions: $excursions, isPopular: $isPopular)';
  }

  @override
  bool operator ==(covariant Island other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.address == address &&
        other.description == description &&
        other.lat == lat &&
        other.lng == lng &&
        listEquals(other.reviews, reviews) &&
        listEquals(other.images, images) &&
        other.facilities == facilities &&
        listEquals(other.hotels, hotels) &&
        listEquals(other.divingDestinations, divingDestinations) &&
        listEquals(other.excursions, excursions) &&
        other.isPopular == isPopular;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        address.hashCode ^
        description.hashCode ^
        lat.hashCode ^
        lng.hashCode ^
        reviews.hashCode ^
        images.hashCode ^
        facilities.hashCode ^
        hotels.hashCode ^
        divingDestinations.hashCode ^
        excursions.hashCode ^
        isPopular.hashCode;
  }
}
