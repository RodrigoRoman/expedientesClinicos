import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_dtos.freezed.dart';
part 'medicine_dtos.g.dart';

@freezed
abstract class MedicineDto implements _$MedicineDto {
  const MedicineDto._();

  const factory MedicineDto({
    required String id,
    required String comercialName,
    required String genericName,
    required NameAbbreviationDto measureUnit,
    required double amountMeasureUnit,
    required NameAbbreviationDto administrationRoute,
    required NameAbbreviationDto pharmaceuticalForm,
    required int amountPerPackage,
    required CategoryDto category,
    required String imageURL,
    required bool controlled,
  }) = _IngredientVersionDto;

  factory MedicineDto.fromDomain(Medicine medicine) {
    return MedicineDto(
        id: medicine.id.getOrCrash(),
        comercialName: medicine.comercialName.getOrCrash(),
        genericName: medicine.genericName.getOrCrash(),
        measureUnit: NameAbbreviationDto.fromDomain(medicine.measureUnit),
        amountMeasureUnit: medicine.amountMeasureUnit.getOrCrash(),
        administrationRoute:
            NameAbbreviationDto.fromDomain(medicine.administrationRoute),
        pharmaceuticalForm:
            NameAbbreviationDto.fromDomain(medicine.pharmaceuticalForm),
        amountPerPackage: medicine.amountPerPackage.getOrCrash(),
        category: CategoryDto.fromDomain(medicine.category),
        imageURL: medicine.imageURL.getOrCrash(),
        controlled: medicine.controlled);
  }

  Medicine toDomain() {
    return Medicine(
      id: UniqueId.fromUniqueString(id),
      comercialName: FullName(comercialName),
      genericName: FullName(genericName),
      measureUnit: measureUnit.toDomain(),
      amountMeasureUnit: NonNegDouble(amountMeasureUnit),
      administrationRoute: administrationRoute.toDomain(),
      pharmaceuticalForm: pharmaceuticalForm.toDomain(),
      amountPerPackage: NonNegInt(amountPerPackage),
      category: category.toDomain(),
      imageURL: ImageURL(imageURL),
      controlled: controlled,
    );
  }

  factory MedicineDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineDtoFromJson(json);

  factory MedicineDto.fromFirestore(DocumentSnapshot doc) {
    return MedicineDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
