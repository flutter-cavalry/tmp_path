import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:tmp_path/src/tmp_path.dart';

void main() {
  test('Tmp path', () {
    final sysTmpDir = Directory.systemTemp.path;
    final tmp = tmpPath();
    expect(p.dirname(tmp), sysTmpDir);
    expect(p.basename(tmp).isNotEmpty, true);
    expect(p.basename(tmp).contains('-'), false);
  });

  test('Prefix', () {
    final tmp = tmpPath(prefix: 'p_');
    expect(p.basename(tmp).startsWith('p_'), true);
  });

  test('Parent dir', () {
    final parentDir = '/a/b/cc';
    final tmp = tmpPath(parentDirectory: parentDir);
    expect(p.dirname(tmp), parentDir);
  });
}
