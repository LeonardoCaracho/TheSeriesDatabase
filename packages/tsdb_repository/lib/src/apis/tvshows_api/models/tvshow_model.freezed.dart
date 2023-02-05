// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvshow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShowModel _$TvShowModelFromJson(Map<String, dynamic> json) {
  return _TvShowModel.fromJson(json);
}

/// @nodoc
mixin _$TvShowModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  ScheduleModel get schedule => throw _privateConstructorUsedError;
  ImageModel get image => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowModelCopyWith<TvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowModelCopyWith<$Res> {
  factory $TvShowModelCopyWith(
          TvShowModel value, $Res Function(TvShowModel) then) =
      _$TvShowModelCopyWithImpl<$Res, TvShowModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> genres,
      ScheduleModel schedule,
      ImageModel image,
      String summary});

  $ScheduleModelCopyWith<$Res> get schedule;
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$TvShowModelCopyWithImpl<$Res, $Val extends TvShowModel>
    implements $TvShowModelCopyWith<$Res> {
  _$TvShowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genres = null,
    Object? schedule = null,
    Object? image = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleModelCopyWith<$Res> get schedule {
    return $ScheduleModelCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get image {
    return $ImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TvShowModelCopyWith<$Res>
    implements $TvShowModelCopyWith<$Res> {
  factory _$$_TvShowModelCopyWith(
          _$_TvShowModel value, $Res Function(_$_TvShowModel) then) =
      __$$_TvShowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> genres,
      ScheduleModel schedule,
      ImageModel image,
      String summary});

  @override
  $ScheduleModelCopyWith<$Res> get schedule;
  @override
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$_TvShowModelCopyWithImpl<$Res>
    extends _$TvShowModelCopyWithImpl<$Res, _$_TvShowModel>
    implements _$$_TvShowModelCopyWith<$Res> {
  __$$_TvShowModelCopyWithImpl(
      _$_TvShowModel _value, $Res Function(_$_TvShowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genres = null,
    Object? schedule = null,
    Object? image = null,
    Object? summary = null,
  }) {
    return _then(_$_TvShowModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvShowModel implements _TvShowModel {
  _$_TvShowModel(
      {required this.id,
      required this.name,
      required final List<String> genres,
      required this.schedule,
      required this.image,
      required this.summary})
      : _genres = genres;

  factory _$_TvShowModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final ScheduleModel schedule;
  @override
  final ImageModel image;
  @override
  final String summary;

  @override
  String toString() {
    return 'TvShowModel(id: $id, name: $name, genres: $genres, schedule: $schedule, image: $image, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvShowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_genres), schedule, image, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvShowModelCopyWith<_$_TvShowModel> get copyWith =>
      __$$_TvShowModelCopyWithImpl<_$_TvShowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvShowModelToJson(
      this,
    );
  }
}

abstract class _TvShowModel implements TvShowModel {
  factory _TvShowModel(
      {required final String id,
      required final String name,
      required final List<String> genres,
      required final ScheduleModel schedule,
      required final ImageModel image,
      required final String summary}) = _$_TvShowModel;

  factory _TvShowModel.fromJson(Map<String, dynamic> json) =
      _$_TvShowModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get genres;
  @override
  ScheduleModel get schedule;
  @override
  ImageModel get image;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_TvShowModelCopyWith<_$_TvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
