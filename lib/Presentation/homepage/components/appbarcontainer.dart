import 'dart:io';
import 'package:flutter/material.dart';
import 'package:locater/Presentation/secondpage/secondscreen.dart';
import 'package:locater/models/constants.dart';
import 'package:locater/models/fetchlocation.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          decoration: const BoxDecoration(borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
          ),
         ),
          child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SecondScreen(adress: adress,))),
        child: Card(
          elevation: 15,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.white,),
            width:65,
            height: 30,
            child:const  Center(child: Text('Continue',style: TextStyle(fontSize: 10),))),
        ),
      ),
      Container(width: 100,height: 100,
      color: Colors.amber,
      child: Image.asset('asset/LocateMe_transparent.png',fit: BoxFit.cover,),),
     Card(elevation: 15,
      child: Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
            width:65,
            height: 30,
        child: InkWell(
          onTap: () => showDialog(context: context,
            builder: (context) {
            return AlertDialog(
              title: Column(
                children: [
                  const Image(image: AssetImage('asset/LocateMe_transparent.png')),
                  Text('Confirm exit?',style: cardfont,),
                ],
              ),
        
              actions: [
              InkWell(onTap: () => Navigator.of(context).pop(),
                child: const Text('No',style: TextStyle(color: Colors.red),)),
              box,
              InkWell(onTap: () {
              Navigator.of(context).pop();
              exit(0);},
                child: const Text('Yes',style: TextStyle(color: Colors.blue),))],
            );
          },),
          child: const  Icon(Icons.logout,)))),
    ],),
          )
        );
  }
}