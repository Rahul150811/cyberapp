import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/utils/utils.dart';
import '../../controller/controllers.dart';
import 'components/components.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: HomeAppBar(
          scaffoldKey: _scaffoldKey,
        ),
        floatingActionButton: const FAB(),
        drawer: AppDrawer(scaffoldKey: _scaffoldKey),
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              children: [
                /// Top Banner Section with Pic and Search Box
                const Expanded(
                  flex: 2,
                  child: HomeBanner(),
                ),

                /// Main body Section
                Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        /// Texts Below SearchBox
                        Padding(
                          padding: EdgeInsets.only(top: AppDimensions.small),
                          child: Text(DynamicTexts.categoryTopText,
                              style: theme.textTheme.headline6!
                                  .copyWith(fontSize: 16.sp)),
                        ),

                        // Category TabBar
                        CategoryTabBar(controller: controller),

                        /// Category GridView
                        CategoriesSection(
                          controller: controller,
                        ),

                        /// Text below the banner
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: AppDimensions.medium),
                            child: Text(DynamicTexts.importantLinks,
                                style: theme.textTheme.headline6!
                                    .copyWith(fontSize: 19.sp)),
                          ),
                        ),

                        /// ImportantLinks ListView
                        const ImportantList(),

                        /// Bottom Cyber Help Line
                        const CyberHelp()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
