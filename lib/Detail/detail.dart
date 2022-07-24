import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> imagelist = [
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-3-_1200x628.png?alt=media&token=e152fdad-696c-4684-af37-a175f27dd64d",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-5-_1200x628.webp?alt=media&token=5b11ea59-e758-4ce1-bfd5-82e48b733706",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fthimg_Untitled-design-9-_1200x628.png?alt=media&token=a2ab9816-3c03-4744-92c7-868ae60d13a1",
    "https://firebasestorage.googleapis.com/v0/b/estate-ec1e9.appspot.com/o/lands%2FPlot%201%2Fwmimg_Untitled-design-1-.png?alt=media&token=939b6aef-8d84-455f-bab3-20722fed58c7",
  ];

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

              CarouselSlider(
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
              ),

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
                top: 340,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 1000,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
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

                      Row(
                        children: const [
                          SizedBox(
                            width: 135,
                            height: 44,
                            child: Card(
                              color: Colors.white54,
                              child: Center(
                                child: Text(
                                  'Property Details',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(
                            Icons.info_outline,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.apartment,
                            size: 25,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Residential',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.add_road,
                            size: 25,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Pitched',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            Icons.compass_calibration_sharp,
                            size: 20,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'South',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 25,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Touch by Road',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.area_chart,
                            size: 25,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4 Anna',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Overview

                      Row(
                        children: const [
                          SizedBox(
                            width: 100,
                            height: 44,
                            child: Card(
                              color: Colors.white54,
                              child: Center(
                                child: Text(
                                  'Overview',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 187,
                          ),
                          Icon(
                            Icons.view_agenda_outlined,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.bed,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Bedroom',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          const Icon(
                            Icons.bathroom_outlined,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Bathroom',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.kitchen_rounded,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Kitchen',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 110,
                          ),
                          const Icon(
                            Icons.living_outlined,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Living Room',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.house,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Floors',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '2.5',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 110,
                          ),
                          const Icon(
                            Icons.local_parking_outlined,
                            size: 35,
                            color: Colors.black45,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Parking',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Description

                      Row(
                        children: const [
                          SizedBox(
                            width: 110,
                            height: 44,
                            child: Card(
                              color: Colors.white54,
                              child: Center(
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Icon(
                            Icons.description_outlined,
                            color: Color.fromARGB(137, 13, 13, 13),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                            ),
                            child: const SizedBox(
                              width: 320,
                              child: Text(
                                '4 Anna Beautiful Land On Sale At Imadol, Lalitpur. Suitable for farm house, resort, view and beautiful enviroment with fresh air to breath.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),

                      // Location

                      Row(
                        children: const [
                          SizedBox(
                            width: 110,
                            height: 44,
                            child: Card(
                              color: Colors.white54,
                              child: Center(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Icon(Icons.location_on)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
