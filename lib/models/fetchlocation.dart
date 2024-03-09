import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locater/models/fetchadress.dart';
import 'package:location/location.dart';

LatLng? _presentLoc; 
LatLng place=const LatLng(12.9121, 77.6446);
Location locationcontroller= Location();
 
Future<LatLng?> getlocation()async{
    bool _serviceEnable;
    PermissionStatus _permissionGranted;

    _serviceEnable =await locationcontroller.serviceEnabled();

    if(_serviceEnable){
     _serviceEnable=await locationcontroller.requestService();
    }
    else{
      print('no service');
    }

    _permissionGranted=await locationcontroller.hasPermission();

    if(_permissionGranted==PermissionStatus.denied){
    _permissionGranted=await locationcontroller.requestPermission();
      if(_permissionGranted!=PermissionStatus.granted){
        print('no service');
      }
    }

    locationcontroller.onLocationChanged.listen((LocationData currentlocation) {
      if(currentlocation.latitude!=null && currentlocation.longitude!=null){
          _presentLoc=LatLng(currentlocation.latitude!, currentlocation.longitude!);
          // print('this is the prent location $_presentLoc');
          fetchaddress(_presentLoc);
      }
     });
     return _presentLoc;
  }