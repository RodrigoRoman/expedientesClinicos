import 'package:expedientes_clinicos/domain/core/value_validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/errors.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

extension NowTS on Timestamp {
  Timestamp now() => Timestamp.fromDate(DateTime.now());
}

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      right(input),
    );
  }
  const List3._(this.value);
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  factory FullName(String input) {
    assert(input != null);
    return FullName._(validateMaxLength(input, maxLength)
        .fold((l) => Left(l), (r) => validateStringNotEmpty((r))));
  }
  const FullName._(this.value);
}

class AbbrName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 15;
  factory AbbrName(String input) {
    assert(input != null);
    return AbbrName._(validateMaxLength(input, maxLength)
        .fold((l) => Left(l), (r) => validateStringNotEmpty((r))));
  }
  const AbbrName._(this.value);
}

//Revisar validator
class ImageURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ImageURL(String input) {
    assert(input != null);
    return ImageURL._(validateImageUrl(input));
  }
  const ImageURL._(this.value);
}

class Address extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;
  factory Address(String input) {
    assert(input != null);
    return Address._(validateMaxLength(input, maxLength));
  }
  const Address._(this.value);
}

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;
  factory Description(String input) {
    assert(input != null);
    return Description._(validateMaxLength(input, maxLength));
  }
  const Description._(this.value);
}

class DateTimeStamp extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateTimeStamp(DateTime input) {
    assert(input != null);
    return DateTimeStamp._(right(input));
  }

  const DateTimeStamp._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;
  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validatePhoneNumber(input));
  }
  const PhoneNumber._(this.value);
}

class NonNegDouble extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory NonNegDouble(double input) {
    assert(input != null);
    return NonNegDouble._(validateNonNegDouble(input));
  }
  const NonNegDouble._(this.value);
}

class NonNegInt extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  factory NonNegInt(int input) {
    assert(input != null);
    return NonNegInt._(validateNonNegInt(input));
  }
  const NonNegInt._(this.value);
}
