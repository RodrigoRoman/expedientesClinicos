import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'indication_dtos.freezed.dart';
part 'indication_dtos.g.dart';

@freezed
abstract class IndicationDto implements _$IndicationDto {
  const IndicationDto._();

  const factory IndicationDto(
      {required String id,
      required String indicationName,
      required CategoryDto indicationCategory,
      required int counter}) = _IndicationDto;

  factory IndicationDto.fromDomain(Indication timeInterval) {
    return IndicationDto(
        id: timeInterval.id.getOrCrash(),
        indicationName: timeInterval.indicationName.getOrCrash(),
        indicationCategory:
            CategoryDto.fromDomain(timeInterval.indicationCategory),
        counter: timeInterval.counter.getOrCrash());
  }

  Indication toDomain() {
    return Indication(
        id: UniqueId.fromUniqueString(id),
        indicationName: FullName(indicationName),
        indicationCategory: indicationCategory.toDomain(),
        counter: NonNegInt(counter));
  }

  factory IndicationDto.fromJson(Map<String, dynamic> json) =>
      _$IndicationDtoFromJson(json);

  factory IndicationDto.fromFirestore(DocumentSnapshot doc) {
    return IndicationDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
