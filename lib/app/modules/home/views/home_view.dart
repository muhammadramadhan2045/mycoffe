import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywarkop/app/common/app_color.dart';
import 'package:mywarkop/app/modules/home/widget/carousel_widget.dart';

import '../controllers/home_controller.dart';
import '../widget/search_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 20),
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: MediaQuery.of(context).padding.top + 5,
                    ),
                    margin: EdgeInsets.only(bottom: Get.height * 0.1),
                    height: Get.height * 0.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          AppColor.primary,
                          AppColor.primary,
                          AppColor.primary.withOpacity(0.9),
                          AppColor.primary.withOpacity(0.9),
                          AppColor.primary.withOpacity(0.9),
                          AppColor.primary.withOpacity(0.9),
                          AppColor.primary.withOpacity(0.85),
                          AppColor.primary.withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            bottom: 5,
                          ),
                          child: const Text(
                            'MyWarkop',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SearchWidget()
                      ],
                    ),
                  ),
                  Positioned.fill(
                    top: Get.height * 0.23,
                    child: GetBuilder<HomeController>(
                      builder: (controller) {
                        return CarouselWidget(
                          imgList: controller.imgList,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
