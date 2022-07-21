import 'package:flutter/material.dart';

class CategotyTypeScreen extends StatelessWidget {
  const CategotyTypeScreen(
      {super.key, required this.categoryId, required this.categoryTitle});
  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      // body: Center(
      //   child: Image.network(
      //       "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/land%2Fdownload.jfif?alt=media&token=890c59db-21f6-4d49-843d-24f17dc50ee1"),
      // ),
    );
  }
}
