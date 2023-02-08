import 'dart:io';

import 'package:http/http.dart' as http;

import 'model/nasa_model.dart';

const _photoDayNasaSectionStart =
    '<!-- PHOTO-DAY-NASA:START - Do not remove or modify this section -->';
const _photoDayNasaSectionEnd = '<!-- PHOTO-DAY-NASA:END -->';

Future<String> overwriteContentPhotoDayNasa(String content) async {
  final NasaModel nasa = await _getDataPhotoDayNasa();

  String contentNasa = '''

<div>
    <a href="${nasa.url}">
      <img src="${nasa.url}" width="500" height="500" alt="${nasa.date} ${nasa.title} NASA">
    </a>
    <div>
        <h4>${nasa.title}</h4>
        <time>${nasa.date}</time>
        <p>${nasa.explanation}</p>
        <strong><em>NASA</em></strong>
    </div>
  </div>
  ''';

  content = _replaceFileContent(
    content,
    _photoDayNasaSectionStart,
    _photoDayNasaSectionEnd,
    contentNasa,
  );
  return content;
}

Future<NasaModel> _getDataPhotoDayNasa() async {
  final String? apiKey = Platform.environment['API_KEY_NASA_PHOTO_DAY'];
  final Uri uri =
      Uri.https('api.nasa.gov', '/planetary/apod', {'api_key': apiKey});
  final http.Response response = await http.get(uri);
  if (response.statusCode >= 300) {
    throw Exception('Response: ${response.statusCode} ${response.reasonPhrase}');
  }
  final String bodyJson = response.body;
  final NasaModel nasaModel = NasaModel.fromJson(bodyJson);
  return nasaModel;
}

String _replaceFileContent(
  final String content,
  final String startSection,
  final String endSection,
  final String newContent,
) {
  return content.replaceRange(
    content.indexOf(startSection) + startSection.length,
    content.indexOf(endSection),
    newContent,
  );
}
