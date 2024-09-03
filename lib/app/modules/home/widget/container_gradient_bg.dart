import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywarkop/app/common/app_color.dart';

class ContainerGradientBackground extends StatelessWidget {
  const ContainerGradientBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: MediaQuery.of(context).padding.top + 10,
      ),
      margin: EdgeInsets.only(bottom: Get.height * 0.15),
      height: Get.height * 0.25,
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
    );
  }
}
