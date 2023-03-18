import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {


  /// Variables For UI
  final RxInt _selectedIndexOfCategory = 0.obs;
  late PageController _categoryPageController;

  /// Getters
  RxInt get selectedIndexOfCategory => _selectedIndexOfCategory;
  PageController get categoryPageController => _categoryPageController;

  /// changing page view Controller status 
  void changeSelectedIndexOfCategory(int index) {
    _selectedIndexOfCategory.value = index;
    _categoryPageController.animateToPage(_selectedIndexOfCategory.value,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }

  /// change tab bar status
  void onPageChanged(int index) {
    _selectedIndexOfCategory.value = index;
  }


  @override
  void onInit() {
    _categoryPageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    _categoryPageController.dispose();
    super.onClose();
  }
 
}
