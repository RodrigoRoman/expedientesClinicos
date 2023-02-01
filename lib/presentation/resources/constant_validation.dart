class ConstantValidation{
  static int minStringLengthPassword = 6;
  static RegExp emailValidRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  ///The bool evaluation is expected to return true
  static RegExp containsUpperCaseRegExp = RegExp(r'[A-Z]');
  static RegExp containsSpecialCharRegExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
  static RegExp containsNumberRegExp = RegExp(r'[0-9]');

}