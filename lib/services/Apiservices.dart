import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locater/models/fetchAPI.dart';
import 'package:locater/models/usermodel/usermodel.dart';

final getusersProvider = FutureProvider<UserDataList>((ref) {
  return getusers();
});