import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

var uuid = Uuid();

String tmpPath({String prefix = '', String? parentDirectory}) {
  var parent = parentDirectory ?? Directory.systemTemp.path;
  var name =
      '${uuid.v4().replaceAll('-', '')}_${DateTime.now().millisecondsSinceEpoch}';
  return p.join(parent, '${prefix.isEmpty ? 'tmp' : prefix}_$name');
}
