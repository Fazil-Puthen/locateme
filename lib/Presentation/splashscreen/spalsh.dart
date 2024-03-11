import 'package:flutter/material.dart';
import 'package:locater/Presentation/homepage/home.dart';
import 'package:locater/models/constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=>Home()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 500,
              height: 500,
              child: Image.asset('asset/LocateMe_transparent.png'),
            ),
            const Text('locating...',style:TextStyle(fontFamily: AutofillHints.addressCity,
            fontSize: 10,color: Colors.red)),
            box,
           const CircularProgressIndicator(color: Colors.yellow,)
          ],
        ),
      ),
    );
  }
}