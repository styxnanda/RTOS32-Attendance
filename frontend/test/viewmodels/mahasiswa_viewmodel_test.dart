import 'package:flutter_test/flutter_test.dart';
import 'package:iot/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MahasiswaViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
