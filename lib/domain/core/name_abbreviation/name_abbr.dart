import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_abbr.freezed.dart';

@freezed
abstract class NameAbbreviation implements _$NameAbbreviation {
  const NameAbbreviation._();
  const factory NameAbbreviation({
    required UniqueId id,
    required FullName name,
    required AbbrName abbr,
  }) = _NameAbbreviation;

  factory NameAbbreviation.empty() =>
      NameAbbreviation(id: UniqueId(), name: FullName(''), abbr: AbbrName(''));
  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }

  bool get isEmpty {
    return name == FullName('') && abbr == AbbrName('');
  }

  @override
  bool operator ==(Object other) {
    return other is NameAbbreviation &&
        other.name == name &&
        other.abbr == abbr;
  }
}
