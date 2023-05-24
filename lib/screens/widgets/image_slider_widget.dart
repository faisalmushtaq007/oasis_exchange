import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({super.key});

  @override
  State<ImageSliderWidget> createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  int currentPage = 0;
  // image url that's in figma is incorrect, so for that i have added errorbuilder
  // in first two images and third and fourth is some dummmy image
  List imagesList = [
    "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://images.unsplash.com/photo-1633292750937-120a94f5c2bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGhvb2RpZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: const Color(0xffEDEEF3),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              viewportFraction: 1,
              initialPage: currentPage,
              enableInfiniteScroll: true,
              // reverse: false,
              // autoPlay: true,
              // autoPlayInterval: const Duration(seconds: 4),
              // autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int index, _) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            items: imagesList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CachedNetworkImage(
                      imageUrl: i,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => const Center(
                              child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator.adaptive(
                                    strokeWidth: 2,
                                  ))),
                      errorWidget: (context, url, error) => Center(
                        child: Image.asset(
                          'assets/img.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Container(
            alignment: AlignmentDirectional.bottomCenter,
            margin: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < imagesList.length; i++)
                  i == currentPage ? slideDots(true) : slideDots(false)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget slideDots(isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.only(left: 10),
      height: isActive ? 10 : 8,
      width: isActive ? 10 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.grey.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
