import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locater/models/fetchlocation.dart';
import 'package:locater/models/locationmodel/locationmodel.dart';


final locationprovider=FutureProvider<LocationModel>((ref) async{
 final location= await getlocation();
  return location;
});
