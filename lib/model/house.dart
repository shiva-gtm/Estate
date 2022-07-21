// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class House {
  List? images;
  String? mainImage;
  List? sliderImage;
  List? location;
  String? markerId;
  String? propertyType;
  String? title;

  House({
    this.images,
    this.mainImage,
    this.sliderImage,
    this.location,
    this.markerId,
    this.propertyType,
    this.title,
  });

  // House.fromMap(Map<String, dynamic> data) {
  //   images = data['Images'];
  //   markerId = data['maker_id'];
  //   title = data['title'];
  //   location = data['location'];
  //   propertyType = data['property_type'];
  //   sliderImage = data['Slider_Images'];
  //   mainImage = data['Main_Image'];
  // }
}
