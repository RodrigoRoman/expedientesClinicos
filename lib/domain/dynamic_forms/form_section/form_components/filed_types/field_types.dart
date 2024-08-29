// These are the basis types that will comprehend a form section.
// Then a form may contain other sections which are represented by
// dropdowns.
import 'package:expedientes_clinicos/domain/dynamic_forms/section_types.dart';

enum FieldType {
  number,
  text,
  range, // Apart from the compare class
  image,
  bool,
  time,
  date,
  dropdown,
  toggle,
  empty,
  errorValue; //low,mid,high (Specially needed because of hierarchies)

  static FieldType fromString(String fieldString) {
    return FieldType.values.firstWhere(
        (e) => (e.name == fieldString) | (e.displayName == fieldString),
        orElse: () => errorValue);
  }

  String get displayName {
    switch (this) {
      case FieldType.number:
        return "Numero";
      case FieldType.text:
        return "Texto";
      case FieldType.range:
        return "Rango";
      case FieldType.image:
        return "Imagen";
      case FieldType.bool:
        return "Positivo/Negativo";
      case FieldType.time:
        return "Hora:Minutos";
      case FieldType.date:
        return "Fecha";
      // The most challenging
      case FieldType.dropdown:
        return "Resumen o Forma";
      case FieldType.empty:
        return "Espacio vacio";
      case FieldType.errorValue:
      default:
        return "Valor de error";
    }
  }
}
