import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:tmp_path/src/tmp_path.dart';

void main() {
  test('tmp path', () {
    var sysTmp = Directory.systemTemp.path;
    var tmpDir = tmpPath();
    expect(tmpDir.startsWith(p.join(sysTmp, 'tmp_')), true);
  });

  test('with prefix', () {
    var sysTmp = Directory.systemTemp.path;
    var tmpDir = tmpPath(prefix: 'p');
    expect(tmpDir.startsWith(p.join(sysTmp, 'p_')), true);
  });
}
