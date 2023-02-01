// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'double_counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoubleCounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleCounterEventCopyWith<$Res> {
  factory $DoubleCounterEventCopyWith(
          DoubleCounterEvent value, $Res Function(DoubleCounterEvent) then) =
      _$DoubleCounterEventCopyWithImpl<$Res, DoubleCounterEvent>;
}

/// @nodoc
class _$DoubleCounterEventCopyWithImpl<$Res, $Val extends DoubleCounterEvent>
    implements $DoubleCounterEventCopyWith<$Res> {
  _$DoubleCounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<double> initialAmount, Option<double> maxAmount});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAmount = null,
    Object? maxAmount = null,
  }) {
    return _then(_$_Initialized(
      null == initialAmount
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialAmount, this.maxAmount);

  @override
  final Option<double> initialAmount;
  @override
  final Option<double> maxAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterEvent.initialized(initialAmount: $initialAmount, maxAmount: $maxAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DoubleCounterEvent.initialized'))
      ..add(DiagnosticsProperty('initialAmount', initialAmount))
      ..add(DiagnosticsProperty('maxAmount', maxAmount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialAmount, initialAmount) ||
                other.initialAmount == initialAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialAmount, maxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return initialized(initialAmount, maxAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return initialized?.call(initialAmount, maxAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialAmount, maxAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DoubleCounterEvent {
  const factory _Initialized(
          final Option<double> initialAmount, final Option<double> maxAmount) =
      _$_Initialized;

  Option<double> get initialAmount;
  Option<double> get maxAmount;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountUpdatedCopyWith<$Res> {
  factory _$$_AmountUpdatedCopyWith(
          _$_AmountUpdated value, $Res Function(_$_AmountUpdated) then) =
      __$$_AmountUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({double newAmount});
}

/// @nodoc
class __$$_AmountUpdatedCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$_AmountUpdated>
    implements _$$_AmountUpdatedCopyWith<$Res> {
  __$$_AmountUpdatedCopyWithImpl(
      _$_AmountUpdated _value, $Res Function(_$_AmountUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAmount = null,
  }) {
    return _then(_$_AmountUpdated(
      null == newAmount
          ? _value.newAmount
          : newAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AmountUpdated with DiagnosticableTreeMixin implements _AmountUpdated {
  const _$_AmountUpdated(this.newAmount);

  @override
  final double newAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterEvent.amountUpdated(newAmount: $newAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DoubleCounterEvent.amountUpdated'))
      ..add(DiagnosticsProperty('newAmount', newAmount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountUpdated &&
            (identical(other.newAmount, newAmount) ||
                other.newAmount == newAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountUpdatedCopyWith<_$_AmountUpdated> get copyWith =>
      __$$_AmountUpdatedCopyWithImpl<_$_AmountUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountUpdated(newAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountUpdated?.call(newAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountUpdated != null) {
      return amountUpdated(newAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) {
    return amountUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) {
    return amountUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountUpdated != null) {
      return amountUpdated(this);
    }
    return orElse();
  }
}

abstract class _AmountUpdated implements DoubleCounterEvent {
  const factory _AmountUpdated(final double newAmount) = _$_AmountUpdated;

  double get newAmount;
  @JsonKey(ignore: true)
  _$$_AmountUpdatedCopyWith<_$_AmountUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MaxAmountUpdatedCopyWith<$Res> {
  factory _$$_MaxAmountUpdatedCopyWith(
          _$_MaxAmountUpdated value, $Res Function(_$_MaxAmountUpdated) then) =
      __$$_MaxAmountUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({double addSubtractAmount});
}

/// @nodoc
class __$$_MaxAmountUpdatedCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$_MaxAmountUpdated>
    implements _$$_MaxAmountUpdatedCopyWith<$Res> {
  __$$_MaxAmountUpdatedCopyWithImpl(
      _$_MaxAmountUpdated _value, $Res Function(_$_MaxAmountUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSubtractAmount = null,
  }) {
    return _then(_$_MaxAmountUpdated(
      null == addSubtractAmount
          ? _value.addSubtractAmount
          : addSubtractAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MaxAmountUpdated
    with DiagnosticableTreeMixin
    implements _MaxAmountUpdated {
  const _$_MaxAmountUpdated(this.addSubtractAmount);

  @override
  final double addSubtractAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterEvent.maxAmountUpdated(addSubtractAmount: $addSubtractAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DoubleCounterEvent.maxAmountUpdated'))
      ..add(DiagnosticsProperty('addSubtractAmount', addSubtractAmount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaxAmountUpdated &&
            (identical(other.addSubtractAmount, addSubtractAmount) ||
                other.addSubtractAmount == addSubtractAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSubtractAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaxAmountUpdatedCopyWith<_$_MaxAmountUpdated> get copyWith =>
      __$$_MaxAmountUpdatedCopyWithImpl<_$_MaxAmountUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return maxAmountUpdated(addSubtractAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return maxAmountUpdated?.call(addSubtractAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) {
    if (maxAmountUpdated != null) {
      return maxAmountUpdated(addSubtractAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) {
    return maxAmountUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) {
    return maxAmountUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) {
    if (maxAmountUpdated != null) {
      return maxAmountUpdated(this);
    }
    return orElse();
  }
}

abstract class _MaxAmountUpdated implements DoubleCounterEvent {
  const factory _MaxAmountUpdated(final double addSubtractAmount) =
      _$_MaxAmountUpdated;

  double get addSubtractAmount;
  @JsonKey(ignore: true)
  _$$_MaxAmountUpdatedCopyWith<_$_MaxAmountUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountIncreasedCopyWith<$Res> {
  factory _$$_AmountIncreasedCopyWith(
          _$_AmountIncreased value, $Res Function(_$_AmountIncreased) then) =
      __$$_AmountIncreasedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AmountIncreasedCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$_AmountIncreased>
    implements _$$_AmountIncreasedCopyWith<$Res> {
  __$$_AmountIncreasedCopyWithImpl(
      _$_AmountIncreased _value, $Res Function(_$_AmountIncreased) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AmountIncreased
    with DiagnosticableTreeMixin
    implements _AmountIncreased {
  const _$_AmountIncreased();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterEvent.amountIncreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DoubleCounterEvent.amountIncreased'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AmountIncreased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountIncreased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountIncreased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountIncreased != null) {
      return amountIncreased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) {
    return amountIncreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) {
    return amountIncreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountIncreased != null) {
      return amountIncreased(this);
    }
    return orElse();
  }
}

abstract class _AmountIncreased implements DoubleCounterEvent {
  const factory _AmountIncreased() = _$_AmountIncreased;
}

/// @nodoc
abstract class _$$_AmountDecreasedCopyWith<$Res> {
  factory _$$_AmountDecreasedCopyWith(
          _$_AmountDecreased value, $Res Function(_$_AmountDecreased) then) =
      __$$_AmountDecreasedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AmountDecreasedCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$_AmountDecreased>
    implements _$$_AmountDecreasedCopyWith<$Res> {
  __$$_AmountDecreasedCopyWithImpl(
      _$_AmountDecreased _value, $Res Function(_$_AmountDecreased) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AmountDecreased
    with DiagnosticableTreeMixin
    implements _AmountDecreased {
  const _$_AmountDecreased();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterEvent.amountDecreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DoubleCounterEvent.amountDecreased'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AmountDecreased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<double> initialAmount, Option<double> maxAmount)
        initialized,
    required TResult Function(double newAmount) amountUpdated,
    required TResult Function(double addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountDecreased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult? Function(double newAmount)? amountUpdated,
    TResult? Function(double addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountDecreased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<double> initialAmount, Option<double> maxAmount)?
        initialized,
    TResult Function(double newAmount)? amountUpdated,
    TResult Function(double addSubtractAmount)? maxAmountUpdated,
    TResult Function()? amountIncreased,
    TResult Function()? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountDecreased != null) {
      return amountDecreased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountUpdated value) amountUpdated,
    required TResult Function(_MaxAmountUpdated value) maxAmountUpdated,
    required TResult Function(_AmountIncreased value) amountIncreased,
    required TResult Function(_AmountDecreased value) amountDecreased,
  }) {
    return amountDecreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountUpdated value)? amountUpdated,
    TResult? Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult? Function(_AmountIncreased value)? amountIncreased,
    TResult? Function(_AmountDecreased value)? amountDecreased,
  }) {
    return amountDecreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountUpdated value)? amountUpdated,
    TResult Function(_MaxAmountUpdated value)? maxAmountUpdated,
    TResult Function(_AmountIncreased value)? amountIncreased,
    TResult Function(_AmountDecreased value)? amountDecreased,
    required TResult orElse(),
  }) {
    if (amountDecreased != null) {
      return amountDecreased(this);
    }
    return orElse();
  }
}

abstract class _AmountDecreased implements DoubleCounterEvent {
  const factory _AmountDecreased() = _$_AmountDecreased;
}

/// @nodoc
mixin _$DoubleCounterState {
  double get amount => throw _privateConstructorUsedError;
  double get maxAmount => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoubleCounterStateCopyWith<DoubleCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleCounterStateCopyWith<$Res> {
  factory $DoubleCounterStateCopyWith(
          DoubleCounterState value, $Res Function(DoubleCounterState) then) =
      _$DoubleCounterStateCopyWithImpl<$Res, DoubleCounterState>;
  @useResult
  $Res call(
      {double amount,
      double maxAmount,
      bool showErrorMessages,
      bool isUpdating});
}

/// @nodoc
class _$DoubleCounterStateCopyWithImpl<$Res, $Val extends DoubleCounterState>
    implements $DoubleCounterStateCopyWith<$Res> {
  _$DoubleCounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? maxAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoubleCounterStateCopyWith<$Res>
    implements $DoubleCounterStateCopyWith<$Res> {
  factory _$$_DoubleCounterStateCopyWith(_$_DoubleCounterState value,
          $Res Function(_$_DoubleCounterState) then) =
      __$$_DoubleCounterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      double maxAmount,
      bool showErrorMessages,
      bool isUpdating});
}

/// @nodoc
class __$$_DoubleCounterStateCopyWithImpl<$Res>
    extends _$DoubleCounterStateCopyWithImpl<$Res, _$_DoubleCounterState>
    implements _$$_DoubleCounterStateCopyWith<$Res> {
  __$$_DoubleCounterStateCopyWithImpl(
      _$_DoubleCounterState _value, $Res Function(_$_DoubleCounterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? maxAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
  }) {
    return _then(_$_DoubleCounterState(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DoubleCounterState
    with DiagnosticableTreeMixin
    implements _DoubleCounterState {
  const _$_DoubleCounterState(
      {required this.amount,
      required this.maxAmount,
      required this.showErrorMessages,
      required this.isUpdating});

  @override
  final double amount;
  @override
  final double maxAmount;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoubleCounterState(amount: $amount, maxAmount: $maxAmount, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DoubleCounterState'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('maxAmount', maxAmount))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isUpdating', isUpdating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoubleCounterState &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, amount, maxAmount, showErrorMessages, isUpdating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoubleCounterStateCopyWith<_$_DoubleCounterState> get copyWith =>
      __$$_DoubleCounterStateCopyWithImpl<_$_DoubleCounterState>(
          this, _$identity);
}

abstract class _DoubleCounterState implements DoubleCounterState {
  const factory _DoubleCounterState(
      {required final double amount,
      required final double maxAmount,
      required final bool showErrorMessages,
      required final bool isUpdating}) = _$_DoubleCounterState;

  @override
  double get amount;
  @override
  double get maxAmount;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  @JsonKey(ignore: true)
  _$$_DoubleCounterStateCopyWith<_$_DoubleCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}
