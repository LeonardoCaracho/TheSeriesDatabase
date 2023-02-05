// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeDetailsModel _$EpisodeDetailsModelFromJson(Map<String, dynamic> json) {
  return _EpisodeDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodeDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDetailsModelCopyWith<EpisodeDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailsModelCopyWith<$Res> {
  factory $EpisodeDetailsModelCopyWith(
          EpisodeDetailsModel value, $Res Function(EpisodeDetailsModel) then) =
      _$EpisodeDetailsModelCopyWithImpl<$Res, EpisodeDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      String? imageUrl,
      String summary});
}

/// @nodoc
class _$EpisodeDetailsModelCopyWithImpl<$Res, $Val extends EpisodeDetailsModel>
    implements $EpisodeDetailsModelCopyWith<$Res> {
  _$EpisodeDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = freezed,
    Object? summary = null,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodeDetailsModelCopyWith<$Res>
    implements $EpisodeDetailsModelCopyWith<$Res> {
  factory _$$_EpisodeDetailsModelCopyWith(_$_EpisodeDetailsModel value,
          $Res Function(_$_EpisodeDetailsModel) then) =
      __$$_EpisodeDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      String? imageUrl,
      String summary});
}

/// @nodoc
class __$$_EpisodeDetailsModelCopyWithImpl<$Res>
    extends _$EpisodeDetailsModelCopyWithImpl<$Res, _$_EpisodeDetailsModel>
    implements _$$_EpisodeDetailsModelCopyWith<$Res> {
  __$$_EpisodeDetailsModelCopyWithImpl(_$_EpisodeDetailsModel _value,
      $Res Function(_$_EpisodeDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? season = null,
    Object? number = null,
    Object? imageUrl = freezed,
    Object? summary = null,
  }) {
    return _then(_$_EpisodeDetailsModel(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeDetailsModel implements _EpisodeDetailsModel {
  _$_EpisodeDetailsModel(
      {required this.id,
      required this.name,
      required this.season,
      required this.number,
      this.imageUrl,
      required this.summary});

  factory _$_EpisodeDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeDetailsModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int season;
  @override
  final int number;
  @override
  final String? imageUrl;
  @override
  final String summary;

  @override
  String toString() {
    return 'EpisodeDetailsModel(id: $id, name: $name, season: $season, number: $number, imageUrl: $imageUrl, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, season, number, imageUrl, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodeDetailsModelCopyWith<_$_EpisodeDetailsModel> get copyWith =>
      __$$_EpisodeDetailsModelCopyWithImpl<_$_EpisodeDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeDetailsModelToJson(
      this,
    );
  }
}

abstract class _EpisodeDetailsModel implements EpisodeDetailsModel {
  factory _EpisodeDetailsModel(
      {required final int id,
      required final String name,
      required final int season,
      required final int number,
      final String? imageUrl,
      required final String summary}) = _$_EpisodeDetailsModel;

  factory _EpisodeDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeDetailsModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get season;
  @override
  int get number;
  @override
  String? get imageUrl;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeDetailsModelCopyWith<_$_EpisodeDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
