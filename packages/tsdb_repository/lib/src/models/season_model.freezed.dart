// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) {
  return _SeasonModel.fromJson(json);
}

/// @nodoc
mixin _$SeasonModel {
  int get season => throw _privateConstructorUsedError;
  List<EpisodeDetailsModel> get episodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonModelCopyWith<SeasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonModelCopyWith<$Res> {
  factory $SeasonModelCopyWith(
          SeasonModel value, $Res Function(SeasonModel) then) =
      _$SeasonModelCopyWithImpl<$Res, SeasonModel>;
  @useResult
  $Res call({int season, List<EpisodeDetailsModel> episodes});
}

/// @nodoc
class _$SeasonModelCopyWithImpl<$Res, $Val extends SeasonModel>
    implements $SeasonModelCopyWith<$Res> {
  _$SeasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? episodes = null,
  }) {
    return _then(_value.copyWith(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDetailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeasonModelCopyWith<$Res>
    implements $SeasonModelCopyWith<$Res> {
  factory _$$_SeasonModelCopyWith(
          _$_SeasonModel value, $Res Function(_$_SeasonModel) then) =
      __$$_SeasonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int season, List<EpisodeDetailsModel> episodes});
}

/// @nodoc
class __$$_SeasonModelCopyWithImpl<$Res>
    extends _$SeasonModelCopyWithImpl<$Res, _$_SeasonModel>
    implements _$$_SeasonModelCopyWith<$Res> {
  __$$_SeasonModelCopyWithImpl(
      _$_SeasonModel _value, $Res Function(_$_SeasonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? episodes = null,
  }) {
    return _then(_$_SeasonModel(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDetailsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonModel implements _SeasonModel {
  _$_SeasonModel(
      {required this.season, required final List<EpisodeDetailsModel> episodes})
      : _episodes = episodes;

  factory _$_SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonModelFromJson(json);

  @override
  final int season;
  final List<EpisodeDetailsModel> _episodes;
  @override
  List<EpisodeDetailsModel> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'SeasonModel(season: $season, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonModel &&
            (identical(other.season, season) || other.season == season) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, season, const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonModelCopyWith<_$_SeasonModel> get copyWith =>
      __$$_SeasonModelCopyWithImpl<_$_SeasonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonModelToJson(
      this,
    );
  }
}

abstract class _SeasonModel implements SeasonModel {
  factory _SeasonModel(
      {required final int season,
      required final List<EpisodeDetailsModel> episodes}) = _$_SeasonModel;

  factory _SeasonModel.fromJson(Map<String, dynamic> json) =
      _$_SeasonModel.fromJson;

  @override
  int get season;
  @override
  List<EpisodeDetailsModel> get episodes;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonModelCopyWith<_$_SeasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
