import 'dart:convert';

class Message {
  final String to;
  final String from;
  final String content;
  final int createdAt;
  Message({
    required this.to,
    required this.from,
    required this.content,
    required this.createdAt,
  });

  Message copyWith({
    String? to,
    String? from,
    String? content,
    int? createdAt,
  }) {
    return Message(
      to: to ?? this.to,
      from: from ?? this.from,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'to': to,
      'from': from,
      'content': content,
      'createdAt': createdAt,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      to: map['to'],
      from: map['from'],
      content: map['content'],
      createdAt: map['createdAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Message(to: $to, from: $from, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message &&
        other.to == to &&
        other.from == from &&
        other.content == content &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return to.hashCode ^ from.hashCode ^ content.hashCode ^ createdAt.hashCode;
  }
}
