import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageSlider extends StatelessWidget {
  ImageSlider({super.key});

  List<String> imagelist = [
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-3-_1200x628.png?alt=media&token=e152fdad-696c-4684-af37-a175f27dd64d",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-5-_1200x628.webp?alt=media&token=5b11ea59-e758-4ce1-bfd5-82e48b733706",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-9-_1200x628.png?alt=media&token=a2ab9816-3c03-4744-92c7-868ae60d13a1",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fwmimg_Untitled-design-1-.png?alt=media&token=939b6aef-8d84-455f-bab3-20722fed58c7",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imagelist
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      e,
                      height: 300,
                      width: 120,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: false,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        height: 350,
      ),
    );
  }
}
