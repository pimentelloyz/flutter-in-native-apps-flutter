import '../helpers.dart';

enum UIError {
  requiredField,
  invalidField,
  unexpected,
  invalidCredentials,
  emailInUse,
  offLineMode,
  invalidEmail,
  invalidPassword,
  codeInvalid,
  notFound,
  invalidCurrentPassword,
  createAccountFail;
}

extension UIErrorExtension on UIError {
  String get description {
    switch (this) {
      case UIError.requiredField:
        return R.string.unexpected;
      default:
        return R.string.unexpected;
    }
  }
}
