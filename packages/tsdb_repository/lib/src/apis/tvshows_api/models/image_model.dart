import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

/// Image model class based on tvmaze api response
@freezed
class ImageModel with _$ImageModel {
  /// ImageModel freezed factory
  factory ImageModel({
    required String medium,
  }) = _ImageModel;

  /// ImageModel fromJson model
  factory ImageModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ImageModelFromJson(json);
}
