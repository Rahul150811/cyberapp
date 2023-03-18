import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../model/utils/utils.dart';
import '../../../controller/controllers.dart';

class FormAppBar extends StatelessWidget with PreferredSizeWidget {
  FormAppBar({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          Get.back();
          Future.delayed(const Duration(milliseconds: 500)).then((value){
            Get.find<FormsController>().onCustomDispose();
          });
          
        },
        icon: const Icon(
          CupertinoIcons.back,
        ),
      ),
      title: Text(DynamicTexts.categoryGridTexts[index],
          style:
              theme.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w600)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_outlined,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
