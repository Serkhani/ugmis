import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  // List of images
  List<String> images = [
    // 'image_url_1',
    // 'image_url_2',
    // 'image_url_3',
    // Add more image URLs as needed
  ];

  // Index of the current image
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          // itemCount: images.length,
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return Container(
              color: Colors.red,
              // width: 150.0,
              height: 150.0,
            );
          },
          options: CarouselOptions(
            height: 200.0,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  // Build individual image widget
  Widget buildImageWidget(int index) {
    final image = images[index];

    // Check if it's the center image and apply scaling if necessary
    if (index == _currentIndex) {
      return Transform.scale(
        scale: 1.2,
        child: GestureDetector(
          onTap: () {
            // Implement the action when the center image is clicked
            print('Center image clicked: $image');
          },
          child: Image.network(image),
        ),
      );
    }

    // For other images, no scaling needed
    return GestureDetector(
      onTap: () {
        // Implement the action when any image is clicked
        print('Image clicked: $image');
      },
      child: Image.network(image),
    );
  }
}
