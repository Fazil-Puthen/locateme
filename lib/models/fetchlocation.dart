import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locater/models/fetchadress.dart';
import 'package:locater/models/locationmodel/locationmodel.dart';
import 'package:location/location.dart';

LatLng? _presentLoc; 
Location locationcontroller= Location();
String adress='Location permission denied';
 
Future<LocationModel> getlocation()async{
    bool _serviceEnable;
    PermissionStatus _permissionGranted;

    _serviceEnable =await locationcontroller.serviceEnabled();

    if(_serviceEnable){
     _serviceEnable=await locationcontroller.requestService();
    }
    else{
    throw Exception('no service ');
    }

    _permissionGranted=await locationcontroller.hasPermission();

    if(_permissionGranted==PermissionStatus.denied){
    _permissionGranted=await locationcontroller.requestPermission();
      if(_permissionGranted!=PermissionStatus.granted){
        throw Exception('Location permision denied');
      }
    }
     Completer<String> completer = Completer<String>();
    locationcontroller.onLocationChanged.listen((LocationData currentlocation)async {
      if(currentlocation.latitude!=null && currentlocation.longitude!=null){
        _presentLoc=LatLng(currentlocation.latitude!, currentlocation.longitude!);
        adress=await fetchaddress(_presentLoc) ;
        completer.complete(adress);
      }
     });
     adress=await completer.future;
     return LocationModel(location: _presentLoc!,description: adress);
  }