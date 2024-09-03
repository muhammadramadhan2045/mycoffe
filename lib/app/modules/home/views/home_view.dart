import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywarkop/app/modules/home/widget/carousel_widget.dart';
import 'package:mywarkop/app/modules/home/widget/container_gradient_bg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 20),
          children: [
            Stack(
              children: [
                const ContainerGradientBackground(),
                Positioned.fill(
                  top: Get.height * 0.15,
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
    );
  }
}
