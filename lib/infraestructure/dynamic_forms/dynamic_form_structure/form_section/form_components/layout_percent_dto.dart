import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_percent_dto.freezed.dart';
part 'layout_percent_dto.g.dart';

@freezed
abstract class LayoutPercentDto implements _$LayoutPercentDto {
  const LayoutPercentDto._();

  const factory LayoutPercentDto({
    required int position,
    required double percentage,
  }) = _LayoutPercentDto;

  factory LayoutPercentDto.fromDomain(LayoutPercent layoutPercent) {
    return LayoutPercentDto(
        position: layoutPercent.position.getOrCrash(),
        percentage: layoutPercent.percentage.getOrCrash());
  }

  LayoutPercent toDomain() {
    return LayoutPercent(
        position: NonNegInt(position), percentage: NonNegDouble(percentage));
  }

  factory LayoutPercentDto.fromJson(Map<String, dynamic> json) =>
      _$LayoutPercentDtoFromJson(json);

  factory LayoutPercentDto.fromFirestore(DocumentSnapshot doc) {
    return LayoutPercentDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
