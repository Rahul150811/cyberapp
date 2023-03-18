import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../model/utils/utils.dart';

class ImportantList extends StatelessWidget {
  const ImportantList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: DynamicTexts.importantLinksTexts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: Get.width * 0.25,
            margin: EdgeInsets.all(10.h),
            child: Column(
              children: [
                Image(
                  fit: BoxFit.fill,
                  height: Get.height * 0.05,
                  image: AssetImage(
                      DynamicTexts.importantLinksImagesAddress[index]),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  DynamicTexts.importantLinksTexts[index],
                  textAlign: TextAlign.center,
                  style: theme.textTheme.subtitle2!
                      .copyWith(fontWeight: FontWeight.w600),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
