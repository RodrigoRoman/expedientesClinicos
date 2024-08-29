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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<double> initialAmount, Option<double> maxAmount});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAmount = null,
    Object? maxAmount = null,
  }) {
    return _then(_$InitializedImpl(
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

class _$InitializedImpl with DiagnosticableTreeMixin implements _Initialized {
  const _$InitializedImpl(this.initialAmount, this.maxAmount);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
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
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
      _$InitializedImpl;

  Option<double> get initialAmount;
  Option<double> get maxAmount;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountUpdatedImplCopyWith<$Res> {
  factory _$$AmountUpdatedImplCopyWith(
          _$AmountUpdatedImpl value, $Res Function(_$AmountUpdatedImpl) then) =
      __$$AmountUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double newAmount});
}

/// @nodoc
class __$$AmountUpdatedImplCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$AmountUpdatedImpl>
    implements _$$AmountUpdatedImplCopyWith<$Res> {
  __$$AmountUpdatedImplCopyWithImpl(
      _$AmountUpdatedImpl _value, $Res Function(_$AmountUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAmount = null,
  }) {
    return _then(_$AmountUpdatedImpl(
      null == newAmount
          ? _value.newAmount
          : newAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AmountUpdatedImpl
    with DiagnosticableTreeMixin
    implements _AmountUpdated {
  const _$AmountUpdatedImpl(this.newAmount);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountUpdatedImpl &&
            (identical(other.newAmount, newAmount) ||
                other.newAmount == newAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountUpdatedImplCopyWith<_$AmountUpdatedImpl> get copyWith =>
      __$$AmountUpdatedImplCopyWithImpl<_$AmountUpdatedImpl>(this, _$identity);

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
  const factory _AmountUpdated(final double newAmount) = _$AmountUpdatedImpl;

  double get newAmount;
  @JsonKey(ignore: true)
  _$$AmountUpdatedImplCopyWith<_$AmountUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaxAmountUpdatedImplCopyWith<$Res> {
  factory _$$MaxAmountUpdatedImplCopyWith(_$MaxAmountUpdatedImpl value,
          $Res Function(_$MaxAmountUpdatedImpl) then) =
      __$$MaxAmountUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double addSubtractAmount});
}

/// @nodoc
class __$$MaxAmountUpdatedImplCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$MaxAmountUpdatedImpl>
    implements _$$MaxAmountUpdatedImplCopyWith<$Res> {
  __$$MaxAmountUpdatedImplCopyWithImpl(_$MaxAmountUpdatedImpl _value,
      $Res Function(_$MaxAmountUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSubtractAmount = null,
  }) {
    return _then(_$MaxAmountUpdatedImpl(
      null == addSubtractAmount
          ? _value.addSubtractAmount
          : addSubtractAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MaxAmountUpdatedImpl
    with DiagnosticableTreeMixin
    implements _MaxAmountUpdated {
  const _$MaxAmountUpdatedImpl(this.addSubtractAmount);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxAmountUpdatedImpl &&
            (identical(other.addSubtractAmount, addSubtractAmount) ||
                other.addSubtractAmount == addSubtractAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSubtractAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxAmountUpdatedImplCopyWith<_$MaxAmountUpdatedImpl> get copyWith =>
      __$$MaxAmountUpdatedImplCopyWithImpl<_$MaxAmountUpdatedImpl>(
          this, _$identity);

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
      _$MaxAmountUpdatedImpl;

  double get addSubtractAmount;
  @JsonKey(ignore: true)
  _$$MaxAmountUpdatedImplCopyWith<_$MaxAmountUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountIncreasedImplCopyWith<$Res> {
  factory _$$AmountIncreasedImplCopyWith(_$AmountIncreasedImpl value,
          $Res Function(_$AmountIncreasedImpl) then) =
      __$$AmountIncreasedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AmountIncreasedImplCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$AmountIncreasedImpl>
    implements _$$AmountIncreasedImplCopyWith<$Res> {
  __$$AmountIncreasedImplCopyWithImpl(
      _$AmountIncreasedImpl _value, $Res Function(_$AmountIncreasedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AmountIncreasedImpl
    with DiagnosticableTreeMixin
    implements _AmountIncreased {
  const _$AmountIncreasedImpl();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AmountIncreasedImpl);
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
  const factory _AmountIncreased() = _$AmountIncreasedImpl;
}

/// @nodoc
abstract class _$$AmountDecreasedImplCopyWith<$Res> {
  factory _$$AmountDecreasedImplCopyWith(_$AmountDecreasedImpl value,
          $Res Function(_$AmountDecreasedImpl) then) =
      __$$AmountDecreasedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AmountDecreasedImplCopyWithImpl<$Res>
    extends _$DoubleCounterEventCopyWithImpl<$Res, _$AmountDecreasedImpl>
    implements _$$AmountDecreasedImplCopyWith<$Res> {
  __$$AmountDecreasedImplCopyWithImpl(
      _$AmountDecreasedImpl _value, $Res Function(_$AmountDecreasedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AmountDecreasedImpl
    with DiagnosticableTreeMixin
    implements _AmountDecreased {
  const _$AmountDecreasedImpl();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AmountDecreasedImpl);
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
  const factory _AmountDecreased() = _$AmountDecreasedImpl;
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
abstract class _$$DoubleCounterStateImplCopyWith<$Res>
    implements $DoubleCounterStateCopyWith<$Res> {
  factory _$$DoubleCounterStateImplCopyWith(_$DoubleCounterStateImpl value,
          $Res Function(_$DoubleCounterStateImpl) then) =
      __$$DoubleCounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      double maxAmount,
      bool showErrorMessages,
      bool isUpdating});
}

/// @nodoc
class __$$DoubleCounterStateImplCopyWithImpl<$Res>
    extends _$DoubleCounterStateCopyWithImpl<$Res, _$DoubleCounterStateImpl>
    implements _$$DoubleCounterStateImplCopyWith<$Res> {
  __$$DoubleCounterStateImplCopyWithImpl(_$DoubleCounterStateImpl _value,
      $Res Function(_$DoubleCounterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? maxAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
  }) {
    return _then(_$DoubleCounterStateImpl(
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

class _$DoubleCounterStateImpl
    with DiagnosticableTreeMixin
    implements _DoubleCounterState {
  const _$DoubleCounterStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoubleCounterStateImpl &&
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
  _$$DoubleCounterStateImplCopyWith<_$DoubleCounterStateImpl> get copyWith =>
      __$$DoubleCounterStateImplCopyWithImpl<_$DoubleCounterStateImpl>(
          this, _$identity);
}

abstract class _DoubleCounterState implements DoubleCounterState {
  const factory _DoubleCounterState(
      {required final double amount,
      required final double maxAmount,
      required final bool showErrorMessages,
      required final bool isUpdating}) = _$DoubleCounterStateImpl;

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
  _$$DoubleCounterStateImplCopyWith<_$DoubleCounterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
