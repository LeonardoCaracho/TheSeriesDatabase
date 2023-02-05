// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

void main() {
  group('TsdbRepository', () {
    test('can be instantiated', () {
      expect(TsdbRepository(), isNotNull);
    });
  });
}
