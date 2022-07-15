import 'package:flutter/material.dart';
import 'package:estate/services/Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              AuthService().signOut();
            },
            child: const Text('SignOut'),
          )
        ]),
      ),
    );

    // return Scaffold(
    //   body: StreamBuilder(
    //     stream: FirebaseFirestore.instance
    //     .collection('lands/0IQZxNrmLDwW9Q8mD5Zu/locations')
    //     .snapshots(),
    //   builder: (context, streamSnapshot) {
    //     if (streamSnapshot.connectionState == ConnectionState.waiting){
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //     final documents = streamSnapshot.data?.docs;
    //     return ListView.builder(
    //       itemCount: documents?.length,
    //       itemBuilder: ((context, index) => Container(
    //         padding: const EdgeInsets.all(8),
    //         child: Text(documents![index]['location']),
    //       )),
    //     );
    //   }
    //   )
    // );
  }
}
