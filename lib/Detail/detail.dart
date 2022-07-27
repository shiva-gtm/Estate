import 'package:estate/Shared/amenities.dart';
import 'package:estate/Shared/description.dart';
import 'package:estate/Shared/image_slider.dart';
import 'package:estate/Shared/location_detail_page.dart';
import 'package:estate/Shared/overview.dart';
import 'package:estate/Shared/property_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              //Image Slider
              ImageSlider(),
              // Share Icon

              Positioned(
                right: 15,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                      color: Colors.white,
                    )
                  ],
                ),
              ),

              // Favorite Icons

              Positioned(
                right: 20,
                top: 290,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 40,
                      ),
                      color: Colors.white,
                    )
                  ],
                ),
              ),

              // White Screen starter

              Positioned(
                top: 350,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),

                  // Heading Text

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Land On Sale At Imadol, Lalitpur',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Location Display

                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Imadol, Lalitpur',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),

                          // Timer Display

                          Icon(
                            Icons.timer,
                            color: Colors.black38,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '10 days ago',
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Price Display

                      Row(
                        children: [
                          const Text(
                            'Rs. 80,00,000',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),

                          // Negotiable and Nonnegotiable Card Display

                          SizedBox(
                            width: 100,
                            height: 35,
                            child: Card(
                              color: Colors.green.shade400,
                              child: const Center(
                                child: Text(
                                  'Negotiable',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Property Details
                      const PropertyDetails(),

                      // Divider
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Amenities
                      const Amenities(),

                      // Divider

                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Overview
                      const Overview(),

                      // Divider

                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Description
                      const Description(),

                      //Divider

                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Location
                      const LocationDetailPage()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
