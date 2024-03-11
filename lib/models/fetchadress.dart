import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<String> fetchaddress(LatLng? _presentLoc)async{
   try{
      if(_presentLoc!=null){
        // print('this is inside fetch address');
      List<Placemark> placeaddress=await placemarkFromCoordinates(_presentLoc.latitude,_presentLoc.longitude);
      if(placeaddress.isNotEmpty){
        Placemark place=placeaddress.first;
        String adress='${place.street},${place.subLocality},${place.locality},${place.postalCode},${place.country}';
        return adress;
      }
      
      }
      else{
        return 'Adress not found';
      }
    }
    catch(e){
     throw Exception(e.toString());
    }
    return 'Error';
}