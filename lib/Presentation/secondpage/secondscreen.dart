import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locater/Presentation/secondpage/components/appbar.dart';
import 'package:locater/Presentation/secondpage/components/runningadress.dart';
import 'package:locater/Presentation/secondpage/components/usercard.dart';
import 'package:locater/models/constants.dart';
import 'package:locater/services/Apiservices.dart';


class SecondScreen extends StatelessWidget {
  final String adress;
  const SecondScreen({super.key, required this.adress});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: const PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: SecondAppbar(),
        ),
        body: Column(
          children: [
            //address
            Runningaddress(adress: adress),
            box,

            //personal details
            Expanded(
              child: Consumer(builder: (context, ref, child) {
                final userdatalist = ref.watch(getusersProvider);
                return userdatalist.when(
                    data: (data) {
                      return Usercard(
                        data: data,
                      );
                    },
                    error: (error, stackTrace) => const Center(
                          child: Text('this is error'),
                        ),
                    loading: () => const Center(
                            child: CircularProgressIndicator(
                          color: Colors.yellow,
                        )));
              }),
            )
          ],
        ),
      ),
    );
  }
}
