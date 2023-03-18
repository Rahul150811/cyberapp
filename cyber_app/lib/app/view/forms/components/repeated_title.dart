import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../model/utils/utils.dart';

class RepeatedTitle extends StatelessWidget {
  const RepeatedTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppDimensions.small,
        top: AppDimensions.medium,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: theme.textTheme.subtitle1
              ?.copyWith(fontWeight: FontWeight.w600, fontSize: 19.sp),
        ),
      ),
    );
  }
}