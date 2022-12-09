# tmp_path

[![pub package](https://img.shields.io/pub/v/tmp_path.svg)](https://pub.dev/packages/tmp_path)
[![Build Status](https://github.com/flutter-cavalry/tmp_path/workflows/Build/badge.svg)](https://github.com/flutter-cavalry/tmp_path/actions)

Dart port of [pretty-bytes](https://github.com/sindresorhus/pretty-bytes).

## Usage

```dart
import 'package:tmp_path/tmp_path.dart';

void main() {
  print(prettyBytes(5000));
  // 5 KB

  print(prettyBytes(5000, signed: true));
  // +5 KB

  print(prettyBytes(5000, bits: true));
  // 5 Kbit

  print(prettyBytes(1025, binary: true));
  // 1 KiB

  print(prettyBytes(0.4, locale: 'de'));
  // 0,4 B
}
```
