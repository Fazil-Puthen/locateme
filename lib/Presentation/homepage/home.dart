import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locater/models/fetchlocation.dart';

class Home extends StatelessWidget{
   Home({super.key});

  final LatLng place=const LatLng(12.9121, 77.6446);
  final controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text='Sadanandanagara Jogging Park,';
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            
            //googlemap
            GoogleMap(initialCameraPosition: 
            CameraPosition(target:place ,
            zoom: 13),
            markers: {Marker(markerId: MarkerId('Currentlocation'),
            icon: BitmapDescriptor.defaultMarker,
            position: place),},),

            //textfield
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.5,color: Colors.grey
                  )
                ),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: TextField(
                controller:controller ,
                readOnly: true,
                decoration:const  InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
              ),
            ),
          ],
        ),
       
      ),
    );
  }
}