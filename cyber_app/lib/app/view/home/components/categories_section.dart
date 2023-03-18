import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../model/utils/utils.dart';
import '../../../controller/controllers.dart';
import 'components.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: AppDimensions.large,
          left: AppDimensions.medium,
          right: AppDimensions.medium),
      width: Get.width,
      height: Get.height * 0.36,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: controller.onPageChanged,
        controller: controller.categoryPageController,
        children: const [
          ReportingCategoryItems(),
          ResourcesCategory(),
          StayInformedCategory()
        ],
      ),
    );
  }
}
