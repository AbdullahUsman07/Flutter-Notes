import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  Position? postion;

  fetchPostion() async {
    bool serviceEnabled;

    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Fluttertoast.showToast(msg: 'Service Disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Fluttertoast.showToast(msg: 'Persmission Denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Fluttertoast.showToast(msg: 'Permission denied forever');
    }

    Position? currentPos = await Geolocator.getCurrentPosition();
    setState(() {
      currentPos = postion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(postion == null ?"Location" : postion.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {
            fetchPostion();
          }, child: const Text('Get Loaction')),
        ],
      ),
    );
  }
}
