// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:hop_maldives/models/activities.dart';
import 'package:hop_maldives/models/review.dart';

class Diving {
  final String id;
  final String name;
  final String address;
  final double lat;
  final double lng;
  List<String> images;
  final String description;
  final Activities activities;
  List<Review> reviews;
  final List<String> types;
  final int numberOfAdults;
  final int numberofDivesPerPerson;
  final bool isPopular;
  String message;
  Diving({
    required this.id,
    required this.name,
    required this.address,
    required this.lat,
    required this.lng,
    required this.images,
    required this.description,
    required this.activities,
    required this.reviews,
    required this.types,
    required this.numberOfAdults,
    required this.numberofDivesPerPerson,
    required this.isPopular,
    required this.message,
  });

  Diving copyWith({
    String? id,
    String? name,
    String? address,
    double? lat,
    double? lng,
    List<String>? images,
    String? description,
    Activities? activities,
    List<Review>? reviews,
    List<String>? types,
    int? numberOfAdults,
    int? numberofDivesPerPerson,
    bool? isPopular,
    String? message,
  }) {
    return Diving(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      images: images ?? this.images,
      description: description ?? this.description,
      activities: activities ?? this.activities,
      reviews: reviews ?? this.reviews,
      types: types ?? this.types,
      numberOfAdults: numberOfAdults ?? this.numberOfAdults,
      numberofDivesPerPerson:
          numberofDivesPerPerson ?? this.numberofDivesPerPerson,
      isPopular: isPopular ?? this.isPopular,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'lat': lat,
      'lng': lng,
      'images': images,
      'description': description,
      'activities': activities.toMap(),
      'reviews': reviews.map((x) => x.toMap()).toList(),
      'types': types,
      'numberOfAdults': numberOfAdults,
      'numberofDivesPerPerson': numberofDivesPerPerson,
      'isPopular': isPopular,
      'message': message,
    };
  }

  factory Diving.fromMap(Map<String, dynamic> map) {
    return Diving(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      lat: map['lat'],
      lng: map['lng'],
      images: List<String>.from(map['images']),
      description: map['description'] as String,
      reviews: List<Review>.from(
        (map['reviews'] as List<dynamic>)
            .map<Review?>((x) => Review.fromMap(x)),
      ).where((element) => element.enabled).toList(),
      types: List<String>.from(map['types']),
      numberOfAdults: map['numberOfAdults'] as int,
      numberofDivesPerPerson: map['numberofDivesPerPerson'] as int,
      activities: Activities.fromMap(map['activities'] as Map<String, dynamic>),
      isPopular: map['isPopular'] as bool,
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Diving.fromJson(String source) =>
      Diving.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Diving(id: $id, name: $name, address: $address, lat: $lat, lng: $lng, images: $images, description: $description, activities: $activities, reviews: $reviews, types: $types, numberOfAdults: $numberOfAdults, numberofDivesPerPerson: $numberofDivesPerPerson, isPopular: $isPopular, message: $message)';
  }

  @override
  bool operator ==(covariant Diving other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.address == address &&
        other.lat == lat &&
        other.lng == lng &&
        listEquals(other.images, images) &&
        other.description == description &&
        other.activities == activities &&
        listEquals(other.reviews, reviews) &&
        listEquals(other.types, types) &&
        other.numberOfAdults == numberOfAdults &&
        other.numberofDivesPerPerson == numberofDivesPerPerson &&
        other.isPopular == isPopular &&
        other.message == message;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        address.hashCode ^
        lat.hashCode ^
        lng.hashCode ^
        images.hashCode ^
        description.hashCode ^
        activities.hashCode ^
        reviews.hashCode ^
        types.hashCode ^
        numberOfAdults.hashCode ^
        numberofDivesPerPerson.hashCode ^
        isPopular.hashCode ^
        message.hashCode;
  }
}
