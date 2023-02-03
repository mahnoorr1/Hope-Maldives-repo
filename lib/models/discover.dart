import 'dart:convert';

class Discover {
  final String url;
  final String description;
  Discover({
    required this.url,
    required this.description,
  });

  Discover copyWith({
    String? url,
    String? description,
  }) {
    return Discover(
      url: url ?? this.url,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'description': description,
    };
  }

  factory Discover.fromMap(Map<String, dynamic> map) {
    return Discover(
      url: map['url'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Discover.fromJson(String source) =>
      Discover.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Discover(url: $url, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Discover &&
        other.url == url &&
        other.description == description;
  }

  @override
  int get hashCode => url.hashCode ^ description.hashCode;
}
