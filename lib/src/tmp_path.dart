import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

final _uuid = Uuid();

/// Returns a temporary file name.
String tmpFileName() {
  return '${_uuid.v4().replaceAll('-', '')}${DateTime.now().millisecondsSinceEpoch}';
}

/// Returns a temporary path. You can use that to create a temporary file or directory.
String tmpPath({String prefix = '', String? parentDirectory}) {
  final parent = parentDirectory ?? Directory.systemTemp.path;
  final tmpName = tmpFileName();
  return p.join(parent, '${prefix.isEmpty ? '' : prefix}$tmpName');
}
