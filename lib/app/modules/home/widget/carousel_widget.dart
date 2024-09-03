import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required this.imgList,
  });

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 150,
        aspectRatio: 256 / 90,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 2),
        padEnds: false,
        viewportFraction: 1,
        disableCenter: true,
        scrollPhysics: const BouncingScrollPhysics(),
      ),
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imgList[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
