import '../bin/model/nasa_model.dart';
import 'package:test/test.dart';

void main() {
  group('Data - Model Nasa', () {
    const NasaModel nasaModel = NasaModel(
      date: '2023-02-05',
      explanation:
          'This moon is shining by the light of its planet. Specifically, a large portion of Enceladus pictured here is illuminated primarily by sunlight first reflected from the planet Saturn. The result is that the normally snow-white moon appears in the gold color of Saturn\'s cloud tops.  As most of the illumination comes from the image left, a labyrinth of ridges throws notable shadows just to the right of the image center, while the kilometer-deep canyon Labtayt Sulci is visible just below. The bright thin crescent on the far right is the only part of Enceladus directly lit by the Sun. The featured image was taken in 2011 by the robotic Cassini spacecraft during a close pass by by the enigmatic moon.  Inspection of the lower left part of this digitally sharpened image reveals plumes of ice crystals thought to originate in a below-surface sea.',
      hdurl:
          'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg',
      mediaType: 'image',
      serviceVersion: 'v1',
      title: 'Enceladus by Saturnshine',
      url: 'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg',
    );

    const Map<String, dynamic> dataMap = {
      'date': '2023-02-05',
      'explanation':
          'This moon is shining by the light of its planet. Specifically, a large portion of Enceladus pictured here is illuminated primarily by sunlight first reflected from the planet Saturn. The result is that the normally snow-white moon appears in the gold color of Saturn\'s cloud tops.  As most of the illumination comes from the image left, a labyrinth of ridges throws notable shadows just to the right of the image center, while the kilometer-deep canyon Labtayt Sulci is visible just below. The bright thin crescent on the far right is the only part of Enceladus directly lit by the Sun. The featured image was taken in 2011 by the robotic Cassini spacecraft during a close pass by by the enigmatic moon.  Inspection of the lower left part of this digitally sharpened image reveals plumes of ice crystals thought to originate in a below-surface sea.',
      'hdurl':
          'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg',
      'media_type': 'image',
      'service_version': 'v1',
      'title': 'Enceladus by Saturnshine',
      'url':
          'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg',
    };

    const String dataJson =
        '{"date":"2023-02-05","explanation":"This moon is shining by the light of its planet. Specifically, a large portion of Enceladus pictured here is illuminated primarily by sunlight first reflected from the planet Saturn. The result is that the normally snow-white moon appears in the gold color of Saturn\'s cloud tops.  As most of the illumination comes from the image left, a labyrinth of ridges throws notable shadows just to the right of the image center, while the kilometer-deep canyon Labtayt Sulci is visible just below. The bright thin crescent on the far right is the only part of Enceladus directly lit by the Sun. The featured image was taken in 2011 by the robotic Cassini spacecraft during a close pass by by the enigmatic moon.  Inspection of the lower left part of this digitally sharpened image reveals plumes of ice crystals thought to originate in a below-surface sea.","hdurl":"https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg","media_type":"image","service_version":"v1","title":"Enceladus by Saturnshine","url":"https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg"}';

    const String nasaModelString =
        'NasaModel(date: 2023-02-05, explanation: This moon is shining by the light of its planet. Specifically, a large portion of Enceladus pictured here is illuminated primarily by sunlight first reflected from the planet Saturn. The result is that the normally snow-white moon appears in the gold color of Saturn\'s cloud tops.  As most of the illumination comes from the image left, a labyrinth of ridges throws notable shadows just to the right of the image center, while the kilometer-deep canyon Labtayt Sulci is visible just below. The bright thin crescent on the far right is the only part of Enceladus directly lit by the Sun. The featured image was taken in 2011 by the robotic Cassini spacecraft during a close pass by by the enigmatic moon.  Inspection of the lower left part of this digitally sharpened image reveals plumes of ice crystals thought to originate in a below-surface sea., hdurl: https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg, mediaType: image, serviceVersion: v1, title: Enceladus by Saturnshine, url: https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg)';

    test('get field count test', () {
      expect(nasaModel.date, '2023-02-05');
      expect(nasaModel.explanation,
          'This moon is shining by the light of its planet. Specifically, a large portion of Enceladus pictured here is illuminated primarily by sunlight first reflected from the planet Saturn. The result is that the normally snow-white moon appears in the gold color of Saturn\'s cloud tops.  As most of the illumination comes from the image left, a labyrinth of ridges throws notable shadows just to the right of the image center, while the kilometer-deep canyon Labtayt Sulci is visible just below. The bright thin crescent on the far right is the only part of Enceladus directly lit by the Sun. The featured image was taken in 2011 by the robotic Cassini spacecraft during a close pass by by the enigmatic moon.  Inspection of the lower left part of this digitally sharpened image reveals plumes of ice crystals thought to originate in a below-surface sea.');
      expect(nasaModel.hdurl,
          'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg');
      expect(nasaModel.mediaType, 'image');
      expect(nasaModel.serviceVersion, 'v1');
      expect(nasaModel.title, 'Enceladus by Saturnshine');
      expect(nasaModel.url,
          'https://apod.nasa.gov/apod/image/2302/enceladus12_cassini_960.jpg');
    });

    test('toJson() test', () {
      expect(nasaModel.toJson(), dataJson);
    });
    test('toMap() test', () {
      expect(
        nasaModel.toMap(),
        dataMap,
      );
    });
    test("toString() test", () {
      expect(nasaModel.toString(), nasaModelString);
    });

    test('factory NasaModel fromJson() test', () {
      final NasaModel nasaModel = NasaModel.fromJson(dataJson);
      expect(nasaModel, isA<NasaModel>());
      expect(nasaModel.toString(), nasaModelString);
    });
    test('factory NasaModel fromMap() test', () {
      final NasaModel nasaModel = NasaModel.fromMap(dataMap);
      expect(nasaModel, isA<NasaModel>());
      expect(nasaModel.toString(), nasaModelString);
    });
  });
}
