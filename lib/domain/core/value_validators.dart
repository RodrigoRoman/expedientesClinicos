import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_validation.dart';

//convert a double to two decimal places
extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateValidEmail(String email) {
  if (ConstantValidation.emailValidRegExp.hasMatch(email)) {
    return right(email);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: email));
  }
}

Either<ValueFailure<String>, String> validatePasswordLength(String pwd) {
  if (pwd.length > ConstantValidation.minStringLengthPassword) {
    return right(pwd);
  } else {
    return left(ValueFailure.passwordTooShort(
        failedValue: pwd, max: ConstantValidation.minStringLengthPassword));
  }
}

Either<ValueFailure<String>, String> validatePasswordCapital(String pwd) {
  if (pwd.contains(ConstantValidation.containsUpperCaseRegExp)) {
    return right(pwd);
  } else {
    return left(
        ValueFailure.passwordMustContainCapitalLetter(failedValue: pwd));
  }
}

Either<ValueFailure<String>, String> validatePasswordMatch(
    String pwd, String pwdConfirm) {
  if (pwd == pwdConfirm) {
    return right(pwdConfirm);
  } else {
    return left(ValueFailure.passwordDoesNotMatch(failedValue: pwdConfirm));
  }
}

Either<ValueFailure<String>, String> validatePasswordSpecialChar(String pwd) {
  if (pwd.contains(ConstantValidation.containsSpecialCharRegExp)) {
    return right(pwd);
  } else {
    return left(
        ValueFailure.passwordMustContainSpecialCharacter(failedValue: pwd));
  }
}

Either<ValueFailure<String>, String> validatePasswordNumber(String pwd) {
  if (pwd.contains(ConstantValidation.containsNumberRegExp)) {
    return right(pwd);
  } else {
    return left(ValueFailure.passwordMustContainNumber(failedValue: pwd));
  }
}

Either<ValueFailure<String>, String> validateMaxLength(String str, int mx) {
  if (str.length <= mx) {
    return right(str);
  } else {
    return left(ValueFailure.exceedingLength(failedValue: str, max: mx));
  }
}

Either<ValueFailure<String>, String> validateImageUrl(String str) {
  if ((Uri.tryParse(str)?.hasAbsolutePath ?? false)) {
    return right(str);
  } else {
    return left(ValueFailure.urlMustBeValid(failedValue: str));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String phone) {
  if (RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
      .hasMatch(phone)) {
    return right(phone);
  } else {
    return left(ValueFailure.phoneNumberInvalid(failedValue: phone));
  }
}

Either<ValueFailure<double>, double> validateNonNegDouble(double nonNegDouble) {
  if (nonNegDouble >= 0.0) {
    return right(nonNegDouble.toPrecision(2));
  } else {
    return left(
        ValueFailure.passwordMustContainNumber(failedValue: nonNegDouble));
  }
}

Either<ValueFailure<int>, int> validateNonNegInt(int nonNegInt) {
  if (nonNegInt >= 0) {
    return right(nonNegInt);
  } else {
    return left(ValueFailure.passwordMustContainNumber(failedValue: nonNegInt));
  }
}
