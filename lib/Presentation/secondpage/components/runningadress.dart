import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Runningaddress extends StatelessWidget {
  const Runningaddress({
    super.key,
    required this.adress,
  });

  final String adress;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width,
    decoration:const  BoxDecoration(
    ),
    height: 30,
    child:Center(child:
     Marquee(text: adress,
     blankSpace: 20,
     velocity: 10,)),
              );
  }
}