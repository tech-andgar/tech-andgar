import 'dart:io';
import 'ranking_github.dart';
import 'photo_day_nasa.dart';

Future<void> main(List<String> arguments) async {
  final readme = File('README.md');
  String contentReadme = readme.readAsStringSync();

  // String contentGithub = await overwriteContentRankingGithub(contentReadme);
  String contentPhotoDayNasa = await overwriteContentPhotoDayNasa(contentReadme);

  readme.writeAsStringSync(contentGithub);
  readme.writeAsStringSync(contentPhotoDayNasa);
}
