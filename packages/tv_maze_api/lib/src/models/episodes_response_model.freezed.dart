// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodesResponseModel _$EpisodesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EpisodesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodesResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  ImageModel? get image => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesResponseModelCopyWith<EpisodesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesResponseModelCopyWith<$Res> {
  factory $EpisodesResponseModelCopyWith(EpisodesResponseModel value,
          $Res Function(EpisodesResponseModel) then) =
      _$EpisodesResponseModelCopyWithImpl<$Res, EpisodesResponseModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      @JsonKey(name: 'image') ImageModel? image,
      String? summary});

  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$EpisodesResponseModelCopyWithImpl<$Res,
        $Val extends EpisodesResponseModel>
    implements $EpisodesResponseModelCopyWith<$Res> {
  _$EpisodesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? season = null,
    Object? number = null,
    Object? image = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EpisodesResponseModelCopyWith<$Res>
    implements $EpisodesResponseModelCopyWith<$Res> {
  factory _$$_EpisodesResponseModelCopyWith(_$_EpisodesResponseModel value,
          $Res Function(_$_EpisodesResponseModel) then) =
      __$$_EpisodesResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      @JsonKey(name: 'image') ImageModel? image,
      String? summary});

  @override
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_EpisodesResponseModelCopyWithImpl<$Res>
    extends _$EpisodesResponseModelCopyWithImpl<$Res, _$_EpisodesResponseModel>
    implements _$$_EpisodesResponseModelCopyWith<$Res> {
  __$$_EpisodesResponseModelCopyWithImpl(_$_EpisodesResponseModel _value,
      $Res Function(_$_EpisodesResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? season = null,
    Object? number = null,
    Object? image = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$_EpisodesResponseModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodesResponseModel implements _EpisodesResponseModel {
  _$_EpisodesResponseModel(
      {required this.id,
      required this.name,
      required this.season,
      required this.number,
      @JsonKey(name: 'image') this.image,
      this.summary});

  factory _$_EpisodesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesResponseModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int season;
  @override
  final int number;
  @override
  @JsonKey(name: 'image')
  final ImageModel? image;
  @override
  final String? summary;

  @override
  String toString() {
    return 'EpisodesResponseModel(id: $id, name: $name, season: $season, number: $number, image: $image, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodesResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, season, number, image, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodesResponseModelCopyWith<_$_EpisodesResponseModel> get copyWith =>
      __$$_EpisodesResponseModelCopyWithImpl<_$_EpisodesResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesResponseModelToJson(
      this,
    );
  }
}

abstract class _EpisodesResponseModel implements EpisodesResponseModel {
  factory _EpisodesResponseModel(
      {required final int id,
      required final String name,
      required final int season,
      required final int number,
      @JsonKey(name: 'image') final ImageModel? image,
      final String? summary}) = _$_EpisodesResponseModel;

  factory _EpisodesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodesResponseModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get season;
  @override
  int get number;
  @override
  @JsonKey(name: 'image')
  ImageModel? get image;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodesResponseModelCopyWith<_$_EpisodesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
