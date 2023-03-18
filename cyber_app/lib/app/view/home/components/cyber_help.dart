import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../model/utils/utils.dart';

class CyberHelp extends StatelessWidget {
  const CyberHelp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 30.h, vertical: AppDimensions.large),
      width: Get.width,
      height: Get.height * 0.1,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 3))
        ],
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DynamicTexts.cyberHelpLine,
                style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
              ),
              SizedBox(
                width: 9.w,
              ),
              Image(
                image: AssetImage(Assets.images.help.path),
                width: 30.w,
              ),
            ],
          ),
          Text(
            DynamicTexts.cyberHelpLineNum,
            style: theme.textTheme.headline4!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
