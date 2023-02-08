import 'dart:convert';

class NasaModel {
  const NasaModel({
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

  factory NasaModel.fromJson(String source) =>
      NasaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory NasaModel.fromMap(Map<String, dynamic> map) {
    return NasaModel(
      date: map['date'] as String,
      explanation: map['explanation'] as String,
      hdurl: map['hdurl'] as String,
      mediaType: map['media_type'] as String,
      serviceVersion: map['service_version'] as String,
      title: map['title'] as String,
      url: map['url'] as String,
    );
  }

  final String date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  @override
  bool operator ==(covariant NasaModel other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.explanation == explanation &&
        other.hdurl == hdurl &&
        other.mediaType == mediaType &&
        other.serviceVersion == serviceVersion &&
        other.title == title &&
        other.url == url;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        explanation.hashCode ^
        hdurl.hashCode ^
        mediaType.hashCode ^
        serviceVersion.hashCode ^
        title.hashCode ^
        url.hashCode;
  }

  @override
  String toString() {
    return 'NasaModel(date: $date, explanation: $explanation, hdurl: $hdurl, mediaType: $mediaType, serviceVersion: $serviceVersion, title: $title, url: $url)';
  }

  NasaModel copyWith({
    String? date,
    String? explanation,
    String? hdurl,
    String? mediaType,
    String? serviceVersion,
    String? title,
    String? url,
  }) {
    return NasaModel(
      date: date ?? this.date,
      explanation: explanation ?? this.explanation,
      hdurl: hdurl ?? this.hdurl,
      mediaType: mediaType ?? this.mediaType,
      serviceVersion: serviceVersion ?? this.serviceVersion,
      title: title ?? this.title,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'explanation': explanation,
      'hdurl': hdurl,
      'media_type': mediaType,
      'service_version': serviceVersion,
      'title': title,
      'url': url,
    };
  }

  String toJson() => json.encode(toMap());
}
