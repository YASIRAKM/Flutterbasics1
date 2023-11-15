import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loc extends StatefulWidget {
  const Loc({super.key});

  @override
  State<Loc> createState() => _LocState();
}

class _LocState extends State<Loc> {
  Position? mylocation;
  Future<Position?> getloc()async{
    LocationPermission p =await Geolocator.checkPermission();
    if(p==LocationPermission.denied){
      p=await Geolocator.requestPermission();
      if(p== LocationPermission.deniedForever){
        print("Something went wrong");
        return Future.error("Something went wrong");
      }
    }
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Column(
          children: [
            mylocation !=null?SelectableText("${mylocation}"):Text("No Location"),
            ElevatedButton(onPressed: ()async{
              Position? temp=await getloc();
              setState(() {
                mylocation=temp;
              });
            }, child: Text("Get location"))
          ],
        )),
      ),
    );
  }
}
