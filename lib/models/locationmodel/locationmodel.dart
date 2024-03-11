import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'locationmodel.freezed.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  const factory LocationModel({
    required LatLng location,
    required String description,
  }) = _LocationModel;
}
