import 'package:freezed_annotation/freezed_annotation.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
abstract class UserDataList with _$UserDataList {
  const factory UserDataList({
    required List<Map<String, dynamic>> data,
  }) = _UserDataList;

  factory UserDataList.fromJson(Map<String, dynamic> json) =>
      _$UserDataListFromJson(json);
}
