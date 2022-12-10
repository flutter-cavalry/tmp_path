# tmp_path

[![pub package](https://img.shields.io/pub/v/tmp_path.svg)](https://pub.dev/packages/tmp_path)
[![Build Status](https://github.com/flutter-cavalry/tmp_path/workflows/Build/badge.svg)](https://github.com/flutter-cavalry/tmp_path/actions)

Generate a unique path in system temp directory.

## Usage

```dart
import 'package:tmp_path/src/tmp_path.dart';

void main() {
  print(tmpPath());
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/tmp_9c2dd26b67184afcb6d25bad068726c5

  print(tmpPath(prefix: 'test'));
  // /var/folders/q5/yvcxrtbn7mq5h4r4zvjhp_v40000gn/T/test_9a2895c181e94602912abe32b7eafed1
}
```
