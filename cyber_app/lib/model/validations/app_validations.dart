import 'package:cyber_app/model/validations/reg_exp.dart';

/// Forms Validation functions is placed in this file

class AppValidators {
  AppValidators._();

  /// Email Validation Function
  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    } else if (!AppRegExp.emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  /// FullName Validation Function
  static String? fullNameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your full name';
    } else if (!AppRegExp.stringRegExp.hasMatch(value)) {
      return 'Please enter a valid full name';
    }
    return null;
  }

  /// Repeated String Validation Function
  static String? repeatedValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  /// validate locations
  static String? validateLocation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a location';
    }
    if (!AppRegExp.stringRegExp.hasMatch(value)) {
      return 'Location must only contain letters and spaces';
    }
    return null;
  }

  // Validate serial number
  static String? validateSerialNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Serial number is required.';
    } else if (!AppRegExp.serialNumberRegExp.hasMatch(value)) {
      return 'Invalid serial number format. Please use the format: AA12345';
    }
    return null;
  }
}
