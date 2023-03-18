
/// REGEX for validations functions
class AppRegExp {
  AppRegExp._();
  static RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9]{3,}$');
  static RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
  static RegExp emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );
  static RegExp stringRegExp = RegExp(r'^[A-Za-z ]+$');
  static RegExp serialNumberRegExp = RegExp(r'^[0-9]{2}-[0-9]{5}-[0-9]{6}$');
}
