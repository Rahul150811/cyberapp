import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/controllers.dart';

 

showAppearanceModal(
  ThemeData theme,
  Size size,
) {
  var controller = Get.find<ThemeController>();
  Get.bottomSheet(Container(
    padding: EdgeInsets.all(12.h),
    decoration: BoxDecoration(
      color: Get.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade200,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(23.r),
        topRight: Radius.circular(23.r),
      ),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h),
        Text(
          "Select a Theme",
          style: theme.textTheme.subtitle1,
        ),
        SizedBox(height: 5.h),
        ListTile(
          leading: const Icon(
            Icons.light_mode,
            color: Colors.blue,
          ),
          title: Text("Light", style: theme.textTheme.bodyText1),
          onTap: () {
            controller.setTheme("light");
            Get.back();
          },
          trailing: Icon(
            Icons.check,
            color: controller.theme.value == 'light'
                ? theme.primaryColor
                : Colors.transparent,
          ),
        ),
        SizedBox(height: 5.h),
        ListTile(
          leading: const Icon(
            Icons.brightness_3_sharp,
            color: Colors.orange,
          ),
          title: Text("Dark", style: theme.textTheme.bodyText1),
          onTap: () {
            controller.setTheme("dark");
            Get.back();
          },
          trailing: Icon(
            Icons.check,
            color: controller.theme.value == 'dark'
                ? theme.primaryColor
                : Colors.transparent,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.brightness_6,
            color: Colors.blueGrey,
          ),
          title: Text("System", style: theme.textTheme.bodyText1),
          onTap: () {
            controller.setTheme("system");
            Get.back();
          },
          trailing: Icon(
            Icons.check,
            color: controller.theme.value == 'system'
                ? theme.primaryColor
                : Colors.transparent,
          ),
        ),
      ],
    ),
  ));
}