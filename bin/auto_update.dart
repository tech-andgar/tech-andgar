import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart';

const _myRankInGitHubSectionStart =
    '<!-- MY-RANK-IN-GITHUB:START - Do not remove or modify this section -->';
const _myRankInGitHubSectionEnd = '<!-- MY-RANK-IN-GITHUB:END -->';

Future<void> main(List<String> arguments) async {
  final readme = File('README.md');
  String content = readme.readAsStringSync();

  content = _replaceFileContent(
    content,
    _myRankInGitHubSectionStart,
    _myRankInGitHubSectionEnd,
    '''

🤖 **Fun fact 1**: I'm currently [the ${await _getRankAsGitHubCommitter()} most active GitHub committer in Colombia](https://commits.top/colombia.html).</br>
🤖 **Fun fact 2**: I'm currently rated as [the ${await _getRankAsGitHubContributor()} most active GitHub contributor in Colombia](https://commits.top/colombia_public.html).</br>

''',
  );

  readme.writeAsStringSync(content);
}

Future<String> _getRankAsGitHubCommitter() async {
  final response = await get(Uri.https('commits.top', '/colombia.html'));

  return _getRank(response.body);
}

Future<String> _getRankAsGitHubContributor() async {
  final response = await get(Uri.https('commits.top', '/colombia_public.html'));

  return _getRank(response.body);
}

String _getRank(final String html) {
  final document = parse(html);

  for (final element in document.body!.querySelectorAll('tr')) {
    if (element.innerHtml.contains('https://github.com/andgar2010')) {
      final rank = element.querySelector('td')!.innerHtml;

      return _getRankWithUnit(rank.substring(0, rank.indexOf('.')));
    }
  }

  return 'N/A';
}

String _getRankWithUnit(final String rank) {
  if (rank.endsWith('1')) {
    return '${rank}st';
  } else if (rank.endsWith('2')) {
    return '${rank}nd';
  } else if (rank.endsWith('3')) {
    return '${rank}rd';
  }

  return '${rank}th';
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
