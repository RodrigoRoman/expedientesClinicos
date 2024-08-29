import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/section_types.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/form_element_dto.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/form_row_dto.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/layout_percent_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
part "form_section_dto.freezed.dart";
part "form_section_dto.g.dart";

@freezed
class FormSectionDto with _$FormSectionDto {
  const FormSectionDto._();
  factory FormSectionDto({
    required String formId,
    required String sectionName,
    required String sectionType,
    required CategoryDto categoryDto,
    required List<FormRowDto> formRows,
    required List<LayoutPercentDto> layoutYPercent,
  }) = _FormSectionDto;

  factory FormSectionDto.fromDomain(FormSection formSection) {
    return FormSectionDto(
        formId: formSection.formId.toString(),
        sectionName: formSection.sectionName.getOrCrash(),
        sectionType: formSection.sectionType.toString(),
        categoryDto: CategoryDto.fromDomain(formSection.category),
        formRows: formSection.formRows
            .getOrCrash()
            .map((r) => FormRowDto.fromDomain(r))
            .asList(),
        layoutYPercent: formSection.layoutYPercent
            .getOrCrash()
            .map((e) => LayoutPercentDto.fromDomain(e))
            .asList());
  }
  FormSection toDomain() {
    return FormSection(
        formId: UniqueId.fromUniqueString(formId),
        sectionName: NonEmptyString(sectionName),
        sectionType: NonEmptySectionType(SectionTypes.fromString(sectionType)),
        formRows:
            List3(KtList.from(formRows.map((r) => r.toDomain()).toList())),
        category: categoryDto.toDomain(),
        layoutYPercent: List3(
            KtList.from(layoutYPercent.map((map) => map.toDomain()).toList())));
  }

  factory FormSectionDto.fromJson(Map<String, dynamic> json) =>
      _$FormSectionDtoFromJson(json);

  factory FormSectionDto.fromFirestore(DocumentSnapshot doc) =>
      FormSectionDto.fromJson(doc.data() as Map<String, dynamic>);
}
