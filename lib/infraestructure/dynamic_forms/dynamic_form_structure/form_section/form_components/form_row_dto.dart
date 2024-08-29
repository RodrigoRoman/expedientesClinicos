import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/form_element_dto.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/layout_percent_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part "form_row_dto.freezed.dart";
part "form_row_dto.g.dart";

@freezed
class FormRowDto with _$FormRowDto {
  const FormRowDto._();

  factory FormRowDto({
    required int rowNum,
    required List<LayoutPercentDto> layoutXPercent,
    required List<FormElementDto> formElements,
  }) = _FormRowDto;

  factory FormRowDto.fromDomain(FormRow formRow) {
    return FormRowDto(
      rowNum: formRow.rowNum.getOrCrash(),
      layoutXPercent: formRow.layoutXPercent
          .getOrCrash()
          .map((e) => LayoutPercentDto.fromDomain(e))
          .asList(),
      formElements: formRow.formElements
          .getOrCrash()
          .map((FormElement e) => FormElementDto.fromDomain(e))
          .asList(),
    );
  }

  FormRow toDomain() {
    return FormRow(
        rowNum: NonNegInt(rowNum),
        layoutXPercent: List3(
            KtList.from(layoutXPercent.map((map) => map.toDomain()).toList())),
        formElements: List3(KtList.from(
            formElements.map((FormElementDto e) => e.toDomain()).toList())));
  }

  factory FormRowDto.fromJson(Map<String, dynamic> json) =>
      _$FormRowDtoFromJson(json);
  factory FormRowDto.fromFirebase(DocumentSnapshot doc) =>
      FormRowDto.fromJson(doc.data() as Map<String, dynamic>);
}
