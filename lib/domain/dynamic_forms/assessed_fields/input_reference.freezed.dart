// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputReference {
  String get caseName => throw _privateConstructorUsedError;
  num get minRange => throw _privateConstructorUsedError;
  Unit get unitType => throw _privateConstructorUsedError;
  num get maxRange => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)
        floatRange,
    required TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)
        intRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult? Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RangeInput value) floatRange,
    required TResult Function(_IntRangeInput value) intRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RangeInput value)? floatRange,
    TResult? Function(_IntRangeInput value)? intRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RangeInput value)? floatRange,
    TResult Function(_IntRangeInput value)? intRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputReferenceCopyWith<InputReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputReferenceCopyWith<$Res> {
  factory $InputReferenceCopyWith(
          InputReference value, $Res Function(InputReference) then) =
      _$InputReferenceCopyWithImpl<$Res, InputReference>;
  @useResult
  $Res call({String caseName, Unit unitType});
}

/// @nodoc
class _$InputReferenceCopyWithImpl<$Res, $Val extends InputReference>
    implements $InputReferenceCopyWith<$Res> {
  _$InputReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseName = null,
    Object? unitType = null,
  }) {
    return _then(_value.copyWith(
      caseName: null == caseName
          ? _value.caseName
          : caseName // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: null == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as Unit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RangeInputImplCopyWith<$Res>
    implements $InputReferenceCopyWith<$Res> {
  factory _$$RangeInputImplCopyWith(
          _$RangeInputImpl value, $Res Function(_$RangeInputImpl) then) =
      __$$RangeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String caseName, double minRange, Unit unitType, double maxRange});
}

/// @nodoc
class __$$RangeInputImplCopyWithImpl<$Res>
    extends _$InputReferenceCopyWithImpl<$Res, _$RangeInputImpl>
    implements _$$RangeInputImplCopyWith<$Res> {
  __$$RangeInputImplCopyWithImpl(
      _$RangeInputImpl _value, $Res Function(_$RangeInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseName = null,
    Object? minRange = null,
    Object? unitType = null,
    Object? maxRange = null,
  }) {
    return _then(_$RangeInputImpl(
      caseName: null == caseName
          ? _value.caseName
          : caseName // ignore: cast_nullable_to_non_nullable
              as String,
      minRange: null == minRange
          ? _value.minRange
          : minRange // ignore: cast_nullable_to_non_nullable
              as double,
      unitType: null == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as Unit,
      maxRange: null == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RangeInputImpl extends _RangeInput {
  const _$RangeInputImpl(
      {required this.caseName,
      required this.minRange,
      required this.unitType,
      required this.maxRange})
      : super._();

  @override
  final String caseName;
  @override
  final double minRange;
  @override
  final Unit unitType;
  @override
  final double maxRange;

  @override
  String toString() {
    return 'InputReference.floatRange(caseName: $caseName, minRange: $minRange, unitType: $unitType, maxRange: $maxRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeInputImpl &&
            (identical(other.caseName, caseName) ||
                other.caseName == caseName) &&
            (identical(other.minRange, minRange) ||
                other.minRange == minRange) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.maxRange, maxRange) ||
                other.maxRange == maxRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caseName, minRange, unitType, maxRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeInputImplCopyWith<_$RangeInputImpl> get copyWith =>
      __$$RangeInputImplCopyWithImpl<_$RangeInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)
        floatRange,
    required TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)
        intRange,
  }) {
    return floatRange(caseName, minRange, unitType, maxRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult? Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
  }) {
    return floatRange?.call(caseName, minRange, unitType, maxRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
    required TResult orElse(),
  }) {
    if (floatRange != null) {
      return floatRange(caseName, minRange, unitType, maxRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RangeInput value) floatRange,
    required TResult Function(_IntRangeInput value) intRange,
  }) {
    return floatRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RangeInput value)? floatRange,
    TResult? Function(_IntRangeInput value)? intRange,
  }) {
    return floatRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RangeInput value)? floatRange,
    TResult Function(_IntRangeInput value)? intRange,
    required TResult orElse(),
  }) {
    if (floatRange != null) {
      return floatRange(this);
    }
    return orElse();
  }
}

abstract class _RangeInput extends InputReference {
  const factory _RangeInput(
      {required final String caseName,
      required final double minRange,
      required final Unit unitType,
      required final double maxRange}) = _$RangeInputImpl;
  const _RangeInput._() : super._();

  @override
  String get caseName;
  @override
  double get minRange;
  @override
  Unit get unitType;
  @override
  double get maxRange;
  @override
  @JsonKey(ignore: true)
  _$$RangeInputImplCopyWith<_$RangeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntRangeInputImplCopyWith<$Res>
    implements $InputReferenceCopyWith<$Res> {
  factory _$$IntRangeInputImplCopyWith(
          _$IntRangeInputImpl value, $Res Function(_$IntRangeInputImpl) then) =
      __$$IntRangeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String caseName, int minRange, int maxRange, Unit unitType});
}

/// @nodoc
class __$$IntRangeInputImplCopyWithImpl<$Res>
    extends _$InputReferenceCopyWithImpl<$Res, _$IntRangeInputImpl>
    implements _$$IntRangeInputImplCopyWith<$Res> {
  __$$IntRangeInputImplCopyWithImpl(
      _$IntRangeInputImpl _value, $Res Function(_$IntRangeInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseName = null,
    Object? minRange = null,
    Object? maxRange = null,
    Object? unitType = null,
  }) {
    return _then(_$IntRangeInputImpl(
      caseName: null == caseName
          ? _value.caseName
          : caseName // ignore: cast_nullable_to_non_nullable
              as String,
      minRange: null == minRange
          ? _value.minRange
          : minRange // ignore: cast_nullable_to_non_nullable
              as int,
      maxRange: null == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as int,
      unitType: null == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as Unit,
    ));
  }
}

/// @nodoc

class _$IntRangeInputImpl extends _IntRangeInput {
  const _$IntRangeInputImpl(
      {required this.caseName,
      required this.minRange,
      required this.maxRange,
      required this.unitType})
      : super._();

  @override
  final String caseName;
  @override
  final int minRange;
  @override
  final int maxRange;
  @override
  final Unit unitType;

  @override
  String toString() {
    return 'InputReference.intRange(caseName: $caseName, minRange: $minRange, maxRange: $maxRange, unitType: $unitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntRangeInputImpl &&
            (identical(other.caseName, caseName) ||
                other.caseName == caseName) &&
            (identical(other.minRange, minRange) ||
                other.minRange == minRange) &&
            (identical(other.maxRange, maxRange) ||
                other.maxRange == maxRange) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caseName, minRange, maxRange, unitType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntRangeInputImplCopyWith<_$IntRangeInputImpl> get copyWith =>
      __$$IntRangeInputImplCopyWithImpl<_$IntRangeInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)
        floatRange,
    required TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)
        intRange,
  }) {
    return intRange(caseName, minRange, maxRange, unitType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult? Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
  }) {
    return intRange?.call(caseName, minRange, maxRange, unitType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String caseName, double minRange, Unit unitType, double maxRange)?
        floatRange,
    TResult Function(
            String caseName, int minRange, int maxRange, Unit unitType)?
        intRange,
    required TResult orElse(),
  }) {
    if (intRange != null) {
      return intRange(caseName, minRange, maxRange, unitType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RangeInput value) floatRange,
    required TResult Function(_IntRangeInput value) intRange,
  }) {
    return intRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RangeInput value)? floatRange,
    TResult? Function(_IntRangeInput value)? intRange,
  }) {
    return intRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RangeInput value)? floatRange,
    TResult Function(_IntRangeInput value)? intRange,
    required TResult orElse(),
  }) {
    if (intRange != null) {
      return intRange(this);
    }
    return orElse();
  }
}

abstract class _IntRangeInput extends InputReference {
  const factory _IntRangeInput(
      {required final String caseName,
      required final int minRange,
      required final int maxRange,
      required final Unit unitType}) = _$IntRangeInputImpl;
  const _IntRangeInput._() : super._();

  @override
  String get caseName;
  @override
  int get minRange;
  @override
  int get maxRange;
  @override
  Unit get unitType;
  @override
  @JsonKey(ignore: true)
  _$$IntRangeInputImplCopyWith<_$IntRangeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
