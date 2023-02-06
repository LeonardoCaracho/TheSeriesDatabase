// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_model.dart';

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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String? get exhibitionHour => throw _privateConstructorUsedError;
  List<String>? get exhibitionDays => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
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
      {int id,
      String name,
      List<String> genres,
      String? exhibitionHour,
      List<String>? exhibitionDays,
      String imageUrl,
      String summary});
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
    Object? exhibitionHour = freezed,
    Object? exhibitionDays = freezed,
    Object? imageUrl = null,
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
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exhibitionHour: freezed == exhibitionHour
          ? _value.exhibitionHour
          : exhibitionHour // ignore: cast_nullable_to_non_nullable
              as String?,
      exhibitionDays: freezed == exhibitionDays
          ? _value.exhibitionDays
          : exhibitionDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      {int id,
      String name,
      List<String> genres,
      String? exhibitionHour,
      List<String>? exhibitionDays,
      String imageUrl,
      String summary});
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
    Object? exhibitionHour = freezed,
    Object? exhibitionDays = freezed,
    Object? imageUrl = null,
    Object? summary = null,
  }) {
    return _then(_$_TvShowModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exhibitionHour: freezed == exhibitionHour
          ? _value.exhibitionHour
          : exhibitionHour // ignore: cast_nullable_to_non_nullable
              as String?,
      exhibitionDays: freezed == exhibitionDays
          ? _value._exhibitionDays
          : exhibitionDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.exhibitionHour,
      final List<String>? exhibitionDays,
      required this.imageUrl,
      required this.summary})
      : _genres = genres,
        _exhibitionDays = exhibitionDays;

  factory _$_TvShowModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowModelFromJson(json);

  @override
  final int id;
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
  final String? exhibitionHour;
  final List<String>? _exhibitionDays;
  @override
  List<String>? get exhibitionDays {
    final value = _exhibitionDays;
    if (value == null) return null;
    if (_exhibitionDays is EqualUnmodifiableListView) return _exhibitionDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String imageUrl;
  @override
  final String summary;

  @override
  String toString() {
    return 'TvShowModel(id: $id, name: $name, genres: $genres, exhibitionHour: $exhibitionHour, exhibitionDays: $exhibitionDays, imageUrl: $imageUrl, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvShowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.exhibitionHour, exhibitionHour) ||
                other.exhibitionHour == exhibitionHour) &&
            const DeepCollectionEquality()
                .equals(other._exhibitionDays, _exhibitionDays) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_genres),
      exhibitionHour,
      const DeepCollectionEquality().hash(_exhibitionDays),
      imageUrl,
      summary);

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
      {required final int id,
      required final String name,
      required final List<String> genres,
      final String? exhibitionHour,
      final List<String>? exhibitionDays,
      required final String imageUrl,
      required final String summary}) = _$_TvShowModel;

  factory _TvShowModel.fromJson(Map<String, dynamic> json) =
      _$_TvShowModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get genres;
  @override
  String? get exhibitionHour;
  @override
  List<String>? get exhibitionDays;
  @override
  String get imageUrl;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_TvShowModelCopyWith<_$_TvShowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
