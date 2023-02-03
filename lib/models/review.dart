import 'dart:convert';

class Review {
  final double ratings;
  final String review;
  final bool enabled;
  Review({
    required this.ratings,
    required this.review,
    this.enabled = false,
  });

  Review copyWith({
    double? ratings,
    String? reviews,
    bool? enabled,
  }) {
    return Review(
      ratings: ratings ?? this.ratings,
      review: reviews ?? review,
      enabled: enabled ?? this.enabled,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ratings': ratings,
      'review': review,
      'enabled': enabled,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      ratings: double.parse(map['ratings'].toString()),
      review: map['review'] as String,
      enabled: map['enabled'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) =>
      Review.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Review(ratings: $ratings, reviews: $review, enabled: $enabled)';

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;

    return other.ratings == ratings &&
        other.review == review &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => ratings.hashCode ^ review.hashCode ^ enabled.hashCode;
}
