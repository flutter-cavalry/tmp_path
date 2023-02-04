// ignore_for_file: avoid_print

import 'package:tmp_path/src/tmp_path.dart';

void main() {
  print(tmpPath());
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/tmp_9c2dd26b67184afcb6d25bad068726c5

  print(tmpPath(prefix: 'test'));
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/test_9a2895c181e94602912abe32b7eafed1

  print(tmpPath(parentDirectory: '/a/b/c'));
  // /a/b/c/tmp_c7ad03d6667044369cdf9d313f48ae98_1675502458003
}
