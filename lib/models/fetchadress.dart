import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<void> fetchaddress(LatLng? _presentLoc)async{
   try{
      if(_presentLoc!=null){
        print('this is inside fetch address');
      List<Placemark> placeaddress=await placemarkFromCoordinates(_presentLoc.latitude,_presentLoc.longitude);
      if(placeaddress!=null && placeaddress.isNotEmpty){
        Placemark place=placeaddress.first;
        String adress='${place.postalCode},${place.subLocality},${place.street},${place.locality},${place.country}';
        print('this is the agdress :$adress');
      }
      
      }
      else{
        return;
      }
    }
    catch(e){
      print('this is the geocoding catch ${e.toString()}');
    }
}