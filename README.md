# tmp_path

[![pub package](https://img.shields.io/pub/v/tmp_path.svg)](https://pub.dev/packages/tmp_path)
[![Build Status](https://github.com/flutter-cavalry/tmp_path/workflows/Build/badge.svg)](https://github.com/flutter-cavalry/tmp_path/actions)

Generate a unique path in system temp directory. You can use it to create a temporary file or directory.

## Usage

```dart
import 'package:tmp_path/src/tmp_path.dart';

void main() {
  print(tmpPath());
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/e8d9cbbcc1944c32a68d3d3739618dcb1679847188986

  print(tmpPath(prefix: 'test'));
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/test399b42ececa84e069cf582b0adf1cea61679847188991

  print(tmpPath(parentDirectory: '/a/b/c'));
  // /a/b/c/30937c061c944d059dfc298242ef1e211679847188991

  print(tmpFileName() + '.txt');
  // 30937c061c944d059dfc298242ef1e211679847188991.txt
}
```
