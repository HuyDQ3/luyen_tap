import 'dart:convert';

class AutoMessage {
  String content;
  List<String> options;

  AutoMessage({required this.content, required this.options});

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'content': content});
    result.addAll({'options': options});

    return result;
  }

  factory AutoMessage.fromMap(Map<String, dynamic> map) {
    return AutoMessage(
      content: map['content'] ?? '',
      options: List<String>.from(map['options']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AutoMessage.fromJson(String source) =>
      AutoMessage.fromMap(json.decode(source));
}
