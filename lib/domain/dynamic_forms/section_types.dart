enum SectionTypes {
  multiSelect,
  toggle,
  fieldBased,
  empty,
  errorValue;

  static SectionTypes fromString(String sectionString) {
    return SectionTypes.values
        .firstWhere((e) => e.name == sectionString, orElse: () => errorValue);
  }

  String get displayName {
    switch (this) {
      case SectionTypes.multiSelect:
        return "Seleccion multiple";
      case SectionTypes.toggle:
        return "Seleccion alternada";
      case SectionTypes.fieldBased:
        return "Basado en campo";
      case SectionTypes.empty:
        return "Espacio vacio";
      case SectionTypes.errorValue:
      default:
        return "Valor de error";
    }
  }
}
