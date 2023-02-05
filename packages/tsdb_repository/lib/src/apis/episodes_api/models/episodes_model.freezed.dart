// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) {
  return _EpisodesModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  EpisodeImageModel get episodeImage => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesModelCopyWith<EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesModelCopyWith<$Res> {
  factory $EpisodesModelCopyWith(
          EpisodesModel value, $Res Function(EpisodesModel) then) =
      _$EpisodesModelCopyWithImpl<$Res, EpisodesModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      @JsonKey(name: 'image') EpisodeImageModel episodeImage,
      String summary});

  $EpisodeImageModelCopyWith<$Res> get episodeImage;
}

/// @nodoc
class _$EpisodesModelCopyWithImpl<$Res, $Val extends EpisodesModel>
    implements $EpisodesModelCopyWith<$Res> {
  _$EpisodesModelCopyWithImpl(this._value, this._then);

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
    Object? episodeImage = null,
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
      episodeImage: null == episodeImage
          ? _value.episodeImage
          : episodeImage // ignore: cast_nullable_to_non_nullable
              as EpisodeImageModel,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeImageModelCopyWith<$Res> get episodeImage {
    return $EpisodeImageModelCopyWith<$Res>(_value.episodeImage, (value) {
      return _then(_value.copyWith(episodeImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EpisodesModelCopyWith<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  factory _$$_EpisodesModelCopyWith(
          _$_EpisodesModel value, $Res Function(_$_EpisodesModel) then) =
      __$$_EpisodesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      @JsonKey(name: 'image') EpisodeImageModel episodeImage,
      String summary});

  @override
  $EpisodeImageModelCopyWith<$Res> get episodeImage;
}

/// @nodoc
class __$$_EpisodesModelCopyWithImpl<$Res>
    extends _$EpisodesModelCopyWithImpl<$Res, _$_EpisodesModel>
    implements _$$_EpisodesModelCopyWith<$Res> {
  __$$_EpisodesModelCopyWithImpl(
      _$_EpisodesModel _value, $Res Function(_$_EpisodesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? season = null,
    Object? number = null,
    Object? episodeImage = null,
    Object? summary = null,
  }) {
    return _then(_$_EpisodesModel(
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
      episodeImage: null == episodeImage
          ? _value.episodeImage
          : episodeImage // ignore: cast_nullable_to_non_nullable
              as EpisodeImageModel,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodesModel implements _EpisodesModel {
  _$_EpisodesModel(
      {required this.id,
      required this.name,
      required this.season,
      required this.number,
      @JsonKey(name: 'image') required this.episodeImage,
      required this.summary});

  factory _$_EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesModelFromJson(json);

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
  final EpisodeImageModel episodeImage;
  @override
  final String summary;

  @override
  String toString() {
    return 'EpisodesModel(id: $id, name: $name, season: $season, number: $number, episodeImage: $episodeImage, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.episodeImage, episodeImage) ||
                other.episodeImage == episodeImage) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, season, number, episodeImage, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodesModelCopyWith<_$_EpisodesModel> get copyWith =>
      __$$_EpisodesModelCopyWithImpl<_$_EpisodesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesModelToJson(
      this,
    );
  }
}

abstract class _EpisodesModel implements EpisodesModel {
  factory _EpisodesModel(
      {required final int id,
      required final String name,
      required final int season,
      required final int number,
      @JsonKey(name: 'image') required final EpisodeImageModel episodeImage,
      required final String summary}) = _$_EpisodesModel;

  factory _EpisodesModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodesModel.fromJson;

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
  EpisodeImageModel get episodeImage;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodesModelCopyWith<_$_EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
