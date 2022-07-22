import 'package:estate/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:estate/services/auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final TextEditingController _searchController = TextEditingController();

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  void initMarkers(specify, specifyId) async {
    var markerIdVal = specifyId;
    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(
        double.parse(specify['location']['latitude']),
        double.parse(specify['location']['longitude']),
      ),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(
        title: specify['location']['address'],
      ),
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  getMarkerData() async {
    FirebaseFirestore.instance.collection('Houses').get().then(
      (houseData) {
        if (houseData.docs.isNotEmpty) {
          for (int i = 0; i < houseData.docs.length; i++) {
            // ignore: avoid_print
            initMarkers(houseData.docs[i].data(), houseData.docs[i].id);
          }
        }
      },
    );

    FirebaseFirestore.instance.collection('lands').get().then(
      (houseData) {
        if (houseData.docs.isNotEmpty) {
          for (int i = 0; i < houseData.docs.length; i++) {
            // ignore: avoid_print
            initMarkers(houseData.docs[i].data(), houseData.docs[i].id);
          }
        }
      },
    );
  }

  @override
  void initState() {
    getMarkerData();
    super.initState();
  }

  // Set<Marker> getMarker() {
  //   return <Marker>[
  //     Marker(
  //       markerId: MarkerId('House 001'),
  //       position: LatLng(27.666914966167347, 85.3389646474501),
  //       icon: BitmapDescriptor.defaultMarker,
  //       infoWindow: InfoWindow(title: 'House 001'),
  //     )
  //   ].toSet();
  // }

  final CameraPosition _initialPositioned = const CameraPosition(
    target: LatLng(27.666914966167347, 85.3389646474501),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              AuthService().signOut();
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: _searchController,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(hintText: "Search by City"),
              )),
              IconButton(
                onPressed: () {
                  LocationService().getPlaceId(_searchController.text);
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: _initialPositioned,
              markers: Set<Marker>.of(markers.values),
              mapType: MapType.normal,
            ),
          ),
        ],
      ),
    );
  }
}
