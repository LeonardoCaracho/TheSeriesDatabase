// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeImageModel _$EpisodeImageModelFromJson(Map<String, dynamic> json) {
  return _EpisodeImageModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodeImageModel {
  String get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeImageModelCopyWith<EpisodeImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeImageModelCopyWith<$Res> {
  factory $EpisodeImageModelCopyWith(
          EpisodeImageModel value, $Res Function(EpisodeImageModel) then) =
      _$EpisodeImageModelCopyWithImpl<$Res, EpisodeImageModel>;
  @useResult
  $Res call({String medium});
}

/// @nodoc
class _$EpisodeImageModelCopyWithImpl<$Res, $Val extends EpisodeImageModel>
    implements $EpisodeImageModelCopyWith<$Res> {
  _$EpisodeImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodeImageModelCopyWith<$Res>
    implements $EpisodeImageModelCopyWith<$Res> {
  factory _$$_EpisodeImageModelCopyWith(_$_EpisodeImageModel value,
          $Res Function(_$_EpisodeImageModel) then) =
      __$$_EpisodeImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medium});
}

/// @nodoc
class __$$_EpisodeImageModelCopyWithImpl<$Res>
    extends _$EpisodeImageModelCopyWithImpl<$Res, _$_EpisodeImageModel>
    implements _$$_EpisodeImageModelCopyWith<$Res> {
  __$$_EpisodeImageModelCopyWithImpl(
      _$_EpisodeImageModel _value, $Res Function(_$_EpisodeImageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$_EpisodeImageModel(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeImageModel implements _EpisodeImageModel {
  _$_EpisodeImageModel({required this.medium});

  factory _$_EpisodeImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeImageModelFromJson(json);

  @override
  final String medium;

  @override
  String toString() {
    return 'EpisodeImageModel(medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeImageModel &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodeImageModelCopyWith<_$_EpisodeImageModel> get copyWith =>
      __$$_EpisodeImageModelCopyWithImpl<_$_EpisodeImageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeImageModelToJson(
      this,
    );
  }
}

abstract class _EpisodeImageModel implements EpisodeImageModel {
  factory _EpisodeImageModel({required final String medium}) =
      _$_EpisodeImageModel;

  factory _EpisodeImageModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeImageModel.fromJson;

  @override
  String get medium;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeImageModelCopyWith<_$_EpisodeImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
