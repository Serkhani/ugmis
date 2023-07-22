import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../controllers/carousel_controller.dart';

class ImageCarousel extends GetView<CarouselGetController> {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => CarouselSlider.builder(
            carouselController: controller.controller,
            itemCount: controller.itemCount,
            itemBuilder: (context, index, realIndex) {
              return Container(
                color: Colors.red,
                height: 150.0,
              );
            },
            options: CarouselOptions(
              height: 200.0,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                  controller.currIndex.value = index;
              },
            ),
          ),
        ),
      ),
    );
  }
}

  // // Build individual image widget
  // Widget buildImageWidget(int index) {
  //   final image = images[index];

  //   // Check if it's the center image and apply scaling if necessary
  //   if (index == _currentIndex) {
  //     return Transform.scale(
  //       scale: 1.2,
  //       child: GestureDetector(
  //         onTap: () {
  //           // Implement the action when the center image is clicked
  //           print('Center image clicked: $image');
  //         },
  //         child: Image.network(image),
  //       ),
  //     );
  //   }

  //   // For other images, no scaling needed
  //   return GestureDetector(
  //     onTap: () {
  //       // Implement the action when any image is clicked
  //       print('Image clicked: $image');
  //     },
  //     child: Image.network(image),
  //   );
  // }
