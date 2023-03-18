import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../model/utils/utils.dart';

class RepeatedFormWidget extends StatelessWidget {
  const RepeatedFormWidget({
    Key? key,
    required this.title,
    required this.hint,
    required this.icon,
    required this.controller,
    required this.validator,
    this.isForDateFunction,
    this.isForDate = false,
    this.hasLongText = false,
  }) : super(key: key);

  final String title;
  final String hint;
  final IconData icon;
  final bool hasLongText;
  final bool isForDate;
  final VoidCallback? isForDateFunction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: theme.textTheme.subtitle1),
        SizedBox(
          height: AppDimensions.small,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enableSuggestions: true,
          validator: validator,
          controller: controller,
          maxLines: hasLongText ? 10 : null,
          style: theme.textTheme.headline6!.copyWith(fontSize: 14.sp),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: hasLongText ? 10.h : 0, horizontal: 20.w),
            filled: true,
            fillColor: Theme.of(context).cardColor,
            prefixIcon: isForDate
                ? IconButton(
                    onPressed: isForDateFunction,
                    icon: const Icon(Icons.date_range))
                : hasLongText
                    ? Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 160.h),
                        child: Icon(
                          icon,
                          size: 20.sp,
                        ),
                      )
                    : Icon(
                        icon,
                        size: 20.sp,
                      ),
            hintStyle: theme.textTheme.bodyText1
                ?.copyWith(color: Colors.grey.shade600, fontSize: 13.sp),
            hintText: hint,
            hintMaxLines: 2,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ],
    );
  }
}
