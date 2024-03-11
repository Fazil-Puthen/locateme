import 'package:flutter/material.dart';

class SecondAppbar extends StatelessWidget {
  const SecondAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),),
      child: Image.asset('asset/LocateMe_transparent.png',fit: BoxFit.cover,),
    );
  }
}