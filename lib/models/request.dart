// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:hop_maldives/models/resort.dart';
import 'package:hop_maldives/models/tour.dart';

class Request {
  final String id;
  final String userId;
  final String title;
  final String fullName;
  final String email;
  final double price;
  final bool? isHotelBooking;
  final Hotel? hotel;
  final bool? isResortBooking;
  final Resort? resort;
  final bool? isTourBooking;
  final Tour? tour;
  final bool? isDivingBooking;
  final Diving? diving;
  final bool? isExcBooking;
  final Excursion? excursion;
  final bool status;
  final int createdAt;
  final DateTime? checkin;
  final DateTime? checkout;

  Request({
    required this.id,
    required this.userId,
    required this.title,
    required this.fullName,
    required this.email,
    required this.price,
    this.isHotelBooking,
    this.hotel,
    this.isResortBooking,
    this.resort,
    this.isTourBooking,
    this.tour,
    this.isDivingBooking,
    this.diving,
    this.isExcBooking,
    this.excursion,
    required this.status,
    required this.createdAt,
    this.checkin,
    this.checkout,
  });

  Request copyWith({
    String? id,
    String? userId,
    String? title,
    String? fullName,
    String? email,
    double? price,
    bool? isHotelBooking,
    Hotel? hotel,
    bool? isResortBooking,
    Resort? resort,
    bool? isTourBooking,
    Tour? tour,
    bool? isDivingBooking,
    Diving? diving,
    bool? isExcBooking,
    Excursion? excursion,
    bool? status,
    int? createdAt,
    DateTime? checkin,
    DateTime? checkout,
  }) {
    return Request(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      price: price ?? this.price,
      isHotelBooking: isHotelBooking ?? this.isHotelBooking,
      hotel: hotel ?? this.hotel,
      isResortBooking: isResortBooking ?? this.isResortBooking,
      resort: resort ?? this.resort,
      isTourBooking: isTourBooking ?? this.isTourBooking,
      tour: tour ?? this.tour,
      isDivingBooking: isDivingBooking ?? this.isDivingBooking,
      diving: diving ?? this.diving,
      isExcBooking: isExcBooking ?? this.isExcBooking,
      excursion: excursion ?? this.excursion,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      checkin: checkin ?? this.checkin,
      checkout: checkout ?? this.checkout,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'fullName': fullName,
      'email': email,
      'price': price,
      'isHotelBooking': isHotelBooking,
      'hotel': hotel?.toMap(),
      'isResortBooking': isResortBooking,
      'resort': resort?.toMap(),
      'isTourBooking': isTourBooking,
      'tour': tour?.toMap(),
      'isDivingBooking': isDivingBooking,
      'diving': diving?.toMap(),
      'isExcBooking': isExcBooking,
      'excursion': excursion?.toMap(),
      'status': status,
      'createdAt': createdAt,
      'checkin': checkin,
      'checkout': checkout,
    };
  }

  factory Request.fromMap(Map<String, dynamic> map) {
    return Request(
      id: map['id'] as String,
      userId: map['userId'] as String,
      title: map['title'] as String,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      price: double.parse(map['price'].toString()),
      isHotelBooking:
          map['isHotelBooking'] != null ? map['isHotelBooking'] as bool : null,
      hotel: map['hotel'] != null
          ? Hotel.fromMap(map['hotel'] as Map<String, dynamic>)
          : null,
      isResortBooking: map['isResortBooking'] != null
          ? map['isResortBooking'] as bool
          : null,
      resort: map['resort'] != null
          ? Resort.fromMap(map['resort'] as Map<String, dynamic>)
          : null,
      isTourBooking:
          map['isTourBooking'] != null ? map['isTourBooking'] as bool : null,
      tour: map['tour'] != null
          ? Tour.fromMap(map['tour'] as Map<String, dynamic>)
          : null,
      isDivingBooking: map['isDivingBooking'] != null
          ? map['isDivingBooking'] as bool
          : null,
      diving: map['diving'] != null
          ? Diving.fromMap(map['diving'] as Map<String, dynamic>)
          : null,
      isExcBooking:
          map['isExcBooking'] != null ? map['isExcBooking'] as bool : null,
      excursion: map['excursion'] != null
          ? Excursion.fromMap(map['excursion'] as Map<String, dynamic>)
          : null,
      status: map['status'] as bool,
      createdAt: map['createdAt'] as int,
      checkin: map['checkin'] == null
          ? null
          : (map['checkin'] as Timestamp).toDate(),
      checkout: (map['checkout'] as Timestamp).toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Request.fromJson(String source) =>
      Request.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Request(id: $id, userId: $userId, title: $title, fullName: $fullName, email: $email, price: $price, isHotelBooking: $isHotelBooking, hotel: $hotel, isResortBooking: $isResortBooking, resort: $resort, isTourBooking: $isTourBooking, tour: $tour, isDivingBooking: $isDivingBooking, diving: $diving, isExcBooking: $isExcBooking, excursion: $excursion, status: $status, createdAt: $createdAt, checkin: $checkin, checkout: $checkout)';
  }

  @override
  bool operator ==(covariant Request other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.title == title &&
        other.fullName == fullName &&
        other.email == email &&
        other.price == price &&
        other.isHotelBooking == isHotelBooking &&
        other.hotel == hotel &&
        other.isResortBooking == isResortBooking &&
        other.resort == resort &&
        other.isTourBooking == isTourBooking &&
        other.tour == tour &&
        other.isDivingBooking == isDivingBooking &&
        other.diving == diving &&
        other.isExcBooking == isExcBooking &&
        other.excursion == excursion &&
        other.status == status &&
        other.createdAt == createdAt &&
        other.checkin == checkin &&
        other.checkout == checkout;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        title.hashCode ^
        fullName.hashCode ^
        email.hashCode ^
        price.hashCode ^
        isHotelBooking.hashCode ^
        hotel.hashCode ^
        isResortBooking.hashCode ^
        resort.hashCode ^
        isTourBooking.hashCode ^
        tour.hashCode ^
        isDivingBooking.hashCode ^
        diving.hashCode ^
        isExcBooking.hashCode ^
        excursion.hashCode ^
        status.hashCode ^
        createdAt.hashCode ^
        checkin.hashCode ^
        checkout.hashCode;
  }
}
