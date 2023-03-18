import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../model/utils/utils.dart';
import '../../../controller/controllers.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
          top: AppDimensions.large,
          left: AppDimensions.large,
          right: AppDimensions.large),
      width: Get.width,
      height: Get.height * 0.055,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: DynamicTexts.categoryListTexts.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Obx(
              () => GestureDetector(
                onTap: () => controller.changeSelectedIndexOfCategory(index),
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                      boxShadow: [
                        controller.selectedIndexOfCategory.value == index
                            ? BoxShadow(
                                blurRadius: 1,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 3))
                            : const BoxShadow(color: Colors.transparent)
                      ],
                      color: controller.selectedIndexOfCategory.value == index
                          ? Get.isDarkMode
                              ? Colors.grey[800]
                              : Colors.grey[100]
                          : null,
                      borderRadius: BorderRadius.circular(
                          controller.selectedIndexOfCategory.value == index
                              ? 15.r
                              : 10.r)),
                  margin: EdgeInsets.only(
                    top: AppDimensions.small,
                    bottom: AppDimensions.small,
                    left: AppDimensions.small,
                    right: AppDimensions.large,
                  ),
                  duration: const Duration(milliseconds: 200),
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.h),
                      child: Text(
                        DynamicTexts.categoryListTexts[index],
                        style: theme.textTheme.subtitle2!.copyWith(
                          fontWeight:
                              controller.selectedIndexOfCategory.value == index
                                  ? FontWeight.w600
                                  : null,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
