import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

var uuid = Uuid();

String tmpPath({String prefix = ''}) {
  var tmp = Directory.systemTemp.path;
  var uid = uuid.v4().replaceAll('-', '');
  return p.join(tmp,
      '${prefix.isEmpty ? 'tmp' : prefix}_${uid}_${DateTime.now().millisecondsSinceEpoch}');
}
