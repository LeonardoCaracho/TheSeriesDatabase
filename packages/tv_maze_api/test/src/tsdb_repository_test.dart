// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:tv_maze_api/src/tv_maze_api_client.dart';

void main() {
  group('TvMazeApi', () {
    test('can be instantiated', () {
      expect(TvMazeApiClient(), isNotNull);
    });
  });
}
