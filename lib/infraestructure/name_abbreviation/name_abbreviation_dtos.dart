import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_abbreviation_dtos.freezed.dart';
part 'name_abbreviation_dtos.g.dart';

@freezed
abstract class NameAbbreviationDto implements _$NameAbbreviationDto {
  const NameAbbreviationDto._();

  const factory NameAbbreviationDto({
    required String id,
    required String name,
    required String abr,
  }) = _NameAbbreviationDto;

  factory NameAbbreviationDto.fromDomain(NameAbbreviation nameAbbreviation) {
    return NameAbbreviationDto(
        id: nameAbbreviation.id.getOrCrash(),
        name: nameAbbreviation.name.getOrCrash(),
        abr: nameAbbreviation.abr.getOrCrash());
  }

  NameAbbreviation toDomain() {
    return NameAbbreviation(
        id: UniqueId.fromUniqueString(id),
        name: AbbrName(name),
        abr: AbbrName(abr));
  }

  factory NameAbbreviationDto.fromJson(Map<String, dynamic> json) =>
      _$NameAbbreviationDtoFromJson(json);

  factory NameAbbreviationDto.fromFirestore(DocumentSnapshot doc) {
    return NameAbbreviationDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
