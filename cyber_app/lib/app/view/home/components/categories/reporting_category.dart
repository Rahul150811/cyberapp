import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../model/utils/utils.dart';
import '../../../../../app/controller/controllers.dart';
import '../../../../../app/view/forms/forms_view.dart';

class ReportingCategoryItems extends StatelessWidget {
  const ReportingCategoryItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: DynamicTexts.categoryGridTexts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: AppDimensions.large,
          crossAxisSpacing: AppDimensions.medium,
          childAspectRatio: 0.9),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.find<FormsController>().onCustomInit();
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (_) => FormsView(index: index)));
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 20.h,
                child: Hero(
                  tag: index,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            DynamicTexts.categoryGridImagesAddress[index]),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: AppDimensions.small,
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 3))
                      ],
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.medium, vertical: 4.h),
                    child: Hero(
                      tag: DynamicTexts.categoryGridTexts[index],
                      child: Text(
                        DynamicTexts.categoryGridTexts[index],
                        style: theme.textTheme.subtitle2,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
