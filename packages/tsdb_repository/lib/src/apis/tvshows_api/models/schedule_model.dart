import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

/// Schedule model class based on tvmaze api response
@freezed
class ScheduleModel with _$ScheduleModel {
  /// ScheduleModel freezed factory
  factory ScheduleModel({
    required String time,
    required List<String> days,
  }) = _ScheduleModel;

  /// ScheduleModel fromJson model
  factory ScheduleModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ScheduleModelFromJson(json);
}
