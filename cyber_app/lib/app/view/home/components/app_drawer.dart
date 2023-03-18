// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../model/utils/utils.dart';
import 'components.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.closeDrawer();
                },
                icon: Icon(
                  Icons.close,
                  color: theme.accentColor,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundColor: theme.accentColor,
                          child: Center(
                            child: Icon(
                              Icons.person,
                              size: 80.sp,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.large,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DynamicTexts.username,
                              style: theme.textTheme.headline4!
                                  .copyWith(fontSize: 25.sp),
                            ),
                            Text(
                              DynamicTexts.userEvent,
                              style: theme.textTheme.subtitle1!
                                  .copyWith(color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ]),
                ),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      List.generate(DynamicTexts.drawerTitles.length, (index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: index == 7
                            ? () {
                                scaffoldKey.currentState!.closeDrawer();
                                showAppearanceModal(theme, Get.size);
                              }
                            : () {},
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.r),
                        child: ListTile(
                          leading: Icon(
                            DynamicTexts.drawerIcons[index],
                            color: Colors.grey[600],
                            size: 27.sp,
                          ),
                          title: Text(
                            DynamicTexts.drawerTitles[index],
                            style: theme.textTheme.subtitle1
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(left: AppDimensions.medium, top: 10.h),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.grey[600],
                      size: 30.sp,
                    ),
                    title: Text(
                      "Sign Out",
                      style: theme.textTheme.subtitle1!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
