import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../model/utils/utils.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Container(
            width: Get.width,
            height: Get.height * 0.27,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.images.bg.path),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: AppDimensions.small,
          left: AppDimensions.medium,
          right: AppDimensions.medium,
          child: TextField(
            style: theme.textTheme.headline6!.copyWith(fontSize: 14.sp),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.w),
              filled: true,
              fillColor: Theme.of(context).cardColor,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.search,
                  size: 20.sp,
                ),
              ),
              hintStyle: theme.textTheme.bodyText1?.copyWith(fontSize: 13.sp),
              hintText: DynamicTexts.searchBoxTexts,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
