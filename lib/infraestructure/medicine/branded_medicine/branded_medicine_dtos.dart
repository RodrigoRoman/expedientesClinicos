import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/generic_medicine/generic_medicine_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branded_medicine_dtos.freezed.dart';
part 'branded_medicine_dtos.g.dart';

@freezed
abstract class BrandedMedicineDto implements _$BrandedMedicineDto {
  const BrandedMedicineDto._();

  const factory BrandedMedicineDto({
    required String id,
    required String comercialName,
    required int existence,
    required int optimum,
    required String imageURL,
    required int counter,
    required GenericMedicineDto genericMedicine,
  }) = _BrandedMedicineDto;

  factory BrandedMedicineDto.fromDomain(BrandedMedicine brandedMedicine) {
    return BrandedMedicineDto(
      id: brandedMedicine.id.getOrCrash(),
      comercialName: brandedMedicine.comercialName.getOrCrash(),
      existence: brandedMedicine.existence.getOrCrash(),
      optimum: brandedMedicine.optimum.getOrCrash(),
      imageURL: brandedMedicine.imageURL.getOrCrash(),
      counter: brandedMedicine.counter.getOrCrash(),
      genericMedicine:
          GenericMedicineDto.fromDomain(brandedMedicine.genericMedicine),
    );
  }

  BrandedMedicine toDomain() {
    return BrandedMedicine(
      id: UniqueId.fromUniqueString(id),
      comercialName: FullName(comercialName),
      existence: NonNegInt(existence),
      imageURL: ImageURL(imageURL),
      counter: NonNegInt(counter),
      optimum: NonNegInt(optimum),
      genericMedicine: genericMedicine.toDomain(),
    );
  }

  factory BrandedMedicineDto.fromJson(Map<String, dynamic> json) =>
      _$BrandedMedicineDtoFromJson(json);

  factory BrandedMedicineDto.fromFirestore(DocumentSnapshot doc) {
    return BrandedMedicineDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
