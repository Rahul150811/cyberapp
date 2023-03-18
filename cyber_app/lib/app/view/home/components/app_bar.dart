import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../model/utils/utils.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  HomeAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(
          Icons.menu,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_constructors
        children: [
          Image(
            image: AssetImage(Assets.images.mainLogo.path),
            width: 30.w,
          ),
          SizedBox(
            width: 7.w,
          ),
          Text(DynamicTexts.appBarTitle,
              style: theme.textTheme.subtitle1
                  ?.copyWith(fontWeight: FontWeight.w600))
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.amber,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
