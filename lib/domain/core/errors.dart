import 'package:expedientes_clinicos/domain/core/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    const explanation =
        'Encountered a valueFailure at an unrecoverable point. Terminating';
    return Error.safeToString('$explanation failure was: $valueFailure');
  }
}
