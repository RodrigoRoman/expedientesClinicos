import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_medicine_dtos.freezed.dart';
part 'generic_medicine_dtos.g.dart';

@freezed
abstract class GenericMedicineDto implements _$GenericMedicineDto {
  const GenericMedicineDto._();

  const factory GenericMedicineDto({
    required String id,
    // required String comercialName,
    required String genericName,
    required NameAbbreviationDto measureUnit,
    required double amountMeasureUnit,
    required NameAbbreviationDto administrationRoute,
    required NameAbbreviationDto pharmaceuticalForm,
    required int amountPerPackage,
    required CategoryDto category,
    // required String imageURL,
    required int counter,
    required bool controlled,
  }) = _GenericMedicineDto;

  factory GenericMedicineDto.fromDomain(GenericMedicine genericMedicine) {
    return GenericMedicineDto(
        id: genericMedicine.id.getOrCrash(),
        // comercialName: genericMedicine.comercialName.getOrCrash(),
        genericName: genericMedicine.genericName.getOrCrash(),
        measureUnit:
            NameAbbreviationDto.fromDomain(genericMedicine.measureUnit),
        amountMeasureUnit: genericMedicine.amountMeasureUnit.getOrCrash(),
        administrationRoute:
            NameAbbreviationDto.fromDomain(genericMedicine.administrationRoute),
        pharmaceuticalForm:
            NameAbbreviationDto.fromDomain(genericMedicine.pharmaceuticalForm),
        amountPerPackage: genericMedicine.amountPerPackage.getOrCrash(),
        category: CategoryDto.fromDomain(genericMedicine.category),
        // imageURL: genericMedicine.imageURL.getOrCrash(),
        counter: genericMedicine.counter.getOrCrash(),
        controlled: genericMedicine.controlled);
  }

  GenericMedicine toDomain() {
    return GenericMedicine(
        id: UniqueId.fromUniqueString(id),
        // comercialName: FullName(comercialName),
        genericName: FullName(genericName),
        measureUnit: measureUnit.toDomain(),
        amountMeasureUnit: NonNegDouble(amountMeasureUnit),
        administrationRoute: administrationRoute.toDomain(),
        pharmaceuticalForm: pharmaceuticalForm.toDomain(),
        amountPerPackage: NonNegInt(amountPerPackage),
        category: category.toDomain(),
        // imageURL: ImageURL(imageURL),
        controlled: controlled,
        counter: NonNegInt(counter));
  }

  factory GenericMedicineDto.fromJson(Map<String, dynamic> json) =>
      _$GenericMedicineDtoFromJson(json);

  factory GenericMedicineDto.fromFirestore(DocumentSnapshot doc) {
    return GenericMedicineDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
