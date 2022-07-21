import 'package:estate/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:estate/services/Auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final TextEditingController _searchController = TextEditingController();

  static final Marker _mapMarker = Marker(
    markerId: const MarkerId('house_123'),
    infoWindow: const InfoWindow(
      title: "House-123",
      // onTap: () {
      //   Navigator.pushNamed(context, './list');
      // }
    ),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(27.666914966167347, 85.3389646474501),
  );

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
              markers: {_mapMarker},
              mapType: MapType.normal,
            ),
          ),
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('lands/').snapshots(),
              builder: (context, streamSnapshot) {
                if (streamSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final documents = streamSnapshot.data?.docs;
                return Text(documents![0]['title']
                    // itemCount: documents?.length,
                    // itemBuilder: ((context, index) => Container(
                    //       padding: const EdgeInsets.all(8),
                    //       child: Text(documents![index]['location']),
                    //     )),
                    );
              })
        ],
      ),
    );
  }
}
