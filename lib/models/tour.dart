// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hop_maldives/models/review.dart';

class Tour {
  final String id;
  final String name;
  final String place;
  final DateTime deadline;
  final String description;
  final double price;
  final String policy;
  final List<String> images;
  List<Review> reviews;

  Tour({
    required this.id,
    required this.name,
    required this.place,
    required this.deadline,
    required this.description,
    required this.price,
    required this.policy,
    required this.images,
    required this.reviews,
  });

  Tour copyWith({
    String? id,
    String? name,
    String? place,
    DateTime? deadline,
    String? description,
    double? price,
    String? policy,
    List<String>? images,
    double? ratings,
    List<Review>? reviews,
  }) {
    return Tour(
      id: id ?? this.id,
      name: name ?? this.name,
      place: place ?? this.place,
      deadline: deadline ?? this.deadline,
      description: description ?? this.description,
      price: price ?? this.price,
      policy: policy ?? this.policy,
      images: images ?? this.images,
      reviews: reviews ?? this.reviews,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'place': place,
      'deadline': deadline,
      'description': description,
      'price': price,
      'policy': policy,
      'images': images,
      'reviews': reviews.map((x) => x.toMap()).toList(),
    };
  }

  factory Tour.fromMap(Map<String, dynamic> map) {
    return Tour(
      id: map['id'] as String,
      name: map['name'] as String,
      place: map['place'] as String,
      deadline: (map['deadline'] as Timestamp).toDate(),
      description: map['description'] as String,
      price: double.parse(map['price'].toString()),
      policy: map['policy'] as String,
      images: List<String>.from(map['images'] as List),
      reviews: List<Review>.from(
        (map['reviews'] as List<dynamic>)
            .map<Review?>((x) => Review.fromMap(x)),
      ).where((element) => element.enabled).toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Tour.fromJson(String source) =>
      Tour.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Tour(id: $id, name: $name, place: $place, deadline: $deadline, description: $description, price: $price, policy: $policy, images: $images,  reviews: $reviews)';
  }

  @override
  bool operator ==(covariant Tour other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.place == place &&
        other.deadline == deadline &&
        other.description == description &&
        other.price == price &&
        other.policy == policy &&
        listEquals(other.images, images) &&
        other.reviews == reviews;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        place.hashCode ^
        deadline.hashCode ^
        description.hashCode ^
        price.hashCode ^
        policy.hashCode ^
        images.hashCode ^
        reviews.hashCode;
  }
}
