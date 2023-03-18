import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:expandable/expandable.dart';

import '../../../../model/utils/utils.dart';

class ExpandAbleHeader extends StatelessWidget {
  const ExpandAbleHeader({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: Get.height * 0.21,
              child: Hero(
                tag: index,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        DynamicTexts.categoryGridImagesAddress[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    iconColor: Get.isDarkMode ? Colors.white : Colors.black,
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding: EdgeInsets.all(AppDimensions.small),
                      child: Hero(
                        tag: DynamicTexts.categoryGridTexts[index],
                        child: Text(
                          "What is the ${DynamicTexts.categoryGridTexts[index]}?",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      )),
                  collapsed: Padding(
                    padding: EdgeInsets.only(
                      left: AppDimensions.small,
                      right: AppDimensions.small,
                      bottom: AppDimensions.small,
                    ),
                    child: Text(
                      DynamicTexts.formHeaders[index],
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  expanded: Padding(
                    padding: EdgeInsets.only(
                      left: AppDimensions.small,
                      right: AppDimensions.small,
                      bottom: AppDimensions.small,
                    ),
                    child: Text(
                      DynamicTexts.formHeaders[index],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
