import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locater/Presentation/homepage/components/appbarcontainer.dart';
import 'package:locater/services/mapsevices.dart';


class Home extends ConsumerWidget {
  Home({super.key});
  final controller = TextEditingController();
  final locationprovide = locationprovider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locate = ref.watch(locationprovider);
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppbarContainer(),
        ),

        body: Stack(
          children: [
            Consumer(
              builder: (context, ref, child) {
                return locate.when(data: (data) {
                  //googlemap
                  return GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: data.location, zoom: 13),
                    markers: {
                      Marker(
                          markerId: const MarkerId('Currentlocation'),
                          icon: BitmapDescriptor.defaultMarker,
                          position: data.location),
                    },
                  );
                }, error: (error, stackTrace) {
                  return const  Center(
                    child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target:LatLng(12.972442, 77.580643) ,zoom: 13),)
                  );
                }, loading: () {
                  return const Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Check network and location services',style: TextStyle(fontSize: 10),),
                        CircularProgressIndicator(color: Colors.amber,),
                      ],
                    ),
                  );
                });
              },
            ),

            //textfield
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(width: 0.5,color: Colors.grey)
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Consumer(
                    builder: (context, ref, child) {
                      return locate.when(
                        data: (data) {
                          controller.text = data.description;
                          return Center(
                            child: TextField(
                              controller: controller,
                              readOnly: true,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          );
                        },
                        error: (error, stackTrace) => Center(
                          child: Text(
                            error.toString(),
                            style: const TextStyle(fontSize: 10,color: Colors.red),
                          ),
                        ),
                        loading: () => const Center(
                          child: Text('Fetching location...'),
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
