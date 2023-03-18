import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FormsController extends GetxController {
  /// Controllers for forms on FormView
  late TextEditingController dateController;
  late TextEditingController fullNameController;
  late TextEditingController departmentController;
  late TextEditingController emailController;
  late TextEditingController descriptionController;
  late TextEditingController locationController;
  late TextEditingController incidentDateController;
  late TextEditingController serialNumController;
  late TextEditingController detailsController;

  /// Variables for UI
  final RxBool _isKeyboardOpen = false.obs;
  final RxBool _isPadEmpty = true.obs;
  final RxList _filesList = RxList();

  /// Getters
  RxBool get isKeyboardOpen => _isKeyboardOpen;
  RxBool get isPadEmpty => _isPadEmpty;
  RxList get filesList => _filesList;

  /// add to files List
  addToFiles(newVal) {
    _filesList.add(newVal);
  }

  /// Remove from Files List
  removeFromFiles(newVal) {
    _filesList.remove(newVal);
  }

  /// Check Status of Soft Keyboard
  checkStatusOfKeyboard(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0) {
      _isKeyboardOpen.value = true;
    } else {
      _isKeyboardOpen.value = false;
    }
  }

  /// Function for declaring is that is pad Empty or not
  changeStatusOfSignaturePad(bool newValue) {
    _isPadEmpty.value = newValue;
  }

  /// Custom init function for forms Controllers
  void onCustomInit() {
    dateController = TextEditingController();
    fullNameController = TextEditingController();
    departmentController = TextEditingController();
    emailController = TextEditingController();
    descriptionController = TextEditingController();
    locationController = TextEditingController();
    incidentDateController = TextEditingController();
    serialNumController = TextEditingController();
    detailsController = TextEditingController();
  }

  /// Custom Dispose function for forms Controllers
  onCustomDispose() {
    dateController.dispose();
    fullNameController.dispose();
    departmentController.dispose();
    emailController.dispose();
    descriptionController.dispose();
    locationController.dispose();
    incidentDateController.dispose();
    serialNumController.dispose();
    detailsController.dispose();
  }

  /// Image Picker Functions
  final _imagePicker = ImagePicker();

  /// Pick Image from Local Device
  Future<File?> pickImage() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  /// take pic from phone camera
  Future<File?> takePicture() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }
}
