import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:gojek_ui/core/theme/theme_config.dart';
import 'package:gojek_ui/module/dashboard/home/controller/home_controller.dart';
import 'package:intl/intl.dart';

class CarouselMenuVertical extends StatelessWidget {
  const CarouselMenuVertical({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Expanded(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.menuCarousel.asMap().entries.map((entry) {
                bool isSelected = controller.currentIndex == entry.key;
                return GestureDetector(
                  onTap: () =>
                      controller.carouselController.animateToPage(entry.key),
                  child: Center(
                    child: Container(
                      width: 4.0,
                      height: 15.0,
                      margin: const EdgeInsets.only(
                        top: 12.0,
                        left: 5,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? Colors.white : const Color(0xff3c3e40),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Expanded(
              child: CarouselSlider(
                carouselController: controller.carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  // aspectRatio: 3,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    controller.currentIndex = index;
                    controller.setState(() {});
                  },
                ),
                items: controller.menuCarousel.map((item) {
                  // print(index);
                  var saldo =
                      NumberFormat.decimalPattern().format(item['saldo']);
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {
                          item['onTap'];
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/gopay.png',
                                      width: 57,
                                      height: 14,
                                    ),
                                    Text(
                                      item['label'],
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text("Rp $saldo", style: bold16),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Expanded(
                                  child: Text(item['description'],
                                      style:
                                          semibold12_5.copyWith(color: green2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
