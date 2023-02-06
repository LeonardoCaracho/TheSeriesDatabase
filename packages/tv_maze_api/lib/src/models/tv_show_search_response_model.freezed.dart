// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShowSearchResponseModel _$TvShowSearchResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TvShowSearchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TvShowSearchResponseModel {
  TvShowResponseModel get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowSearchResponseModelCopyWith<TvShowSearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowSearchResponseModelCopyWith<$Res> {
  factory $TvShowSearchResponseModelCopyWith(TvShowSearchResponseModel value,
          $Res Function(TvShowSearchResponseModel) then) =
      _$TvShowSearchResponseModelCopyWithImpl<$Res, TvShowSearchResponseModel>;
  @useResult
  $Res call({TvShowResponseModel show});

  $TvShowResponseModelCopyWith<$Res> get show;
}

/// @nodoc
class _$TvShowSearchResponseModelCopyWithImpl<$Res,
        $Val extends TvShowSearchResponseModel>
    implements $TvShowSearchResponseModelCopyWith<$Res> {
  _$TvShowSearchResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as TvShowResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TvShowResponseModelCopyWith<$Res> get show {
    return $TvShowResponseModelCopyWith<$Res>(_value.show, (value) {
      return _then(_value.copyWith(show: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TvShowSearchResponseModelCopyWith<$Res>
    implements $TvShowSearchResponseModelCopyWith<$Res> {
  factory _$$_TvShowSearchResponseModelCopyWith(
          _$_TvShowSearchResponseModel value,
          $Res Function(_$_TvShowSearchResponseModel) then) =
      __$$_TvShowSearchResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TvShowResponseModel show});

  @override
  $TvShowResponseModelCopyWith<$Res> get show;
}

/// @nodoc
class __$$_TvShowSearchResponseModelCopyWithImpl<$Res>
    extends _$TvShowSearchResponseModelCopyWithImpl<$Res,
        _$_TvShowSearchResponseModel>
    implements _$$_TvShowSearchResponseModelCopyWith<$Res> {
  __$$_TvShowSearchResponseModelCopyWithImpl(
      _$_TvShowSearchResponseModel _value,
      $Res Function(_$_TvShowSearchResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
  }) {
    return _then(_$_TvShowSearchResponseModel(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as TvShowResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvShowSearchResponseModel implements _TvShowSearchResponseModel {
  _$_TvShowSearchResponseModel({required this.show});

  factory _$_TvShowSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowSearchResponseModelFromJson(json);

  @override
  final TvShowResponseModel show;

  @override
  String toString() {
    return 'TvShowSearchResponseModel(show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvShowSearchResponseModel &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvShowSearchResponseModelCopyWith<_$_TvShowSearchResponseModel>
      get copyWith => __$$_TvShowSearchResponseModelCopyWithImpl<
          _$_TvShowSearchResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvShowSearchResponseModelToJson(
      this,
    );
  }
}

abstract class _TvShowSearchResponseModel implements TvShowSearchResponseModel {
  factory _TvShowSearchResponseModel(
      {required final TvShowResponseModel show}) = _$_TvShowSearchResponseModel;

  factory _TvShowSearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$_TvShowSearchResponseModel.fromJson;

  @override
  TvShowResponseModel get show;
  @override
  @JsonKey(ignore: true)
  _$$_TvShowSearchResponseModelCopyWith<_$_TvShowSearchResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
