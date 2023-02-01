// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'int_counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntCounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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
abstract class $IntCounterEventCopyWith<$Res> {
  factory $IntCounterEventCopyWith(
          IntCounterEvent value, $Res Function(IntCounterEvent) then) =
      _$IntCounterEventCopyWithImpl<$Res, IntCounterEvent>;
}

/// @nodoc
class _$IntCounterEventCopyWithImpl<$Res, $Val extends IntCounterEvent>
    implements $IntCounterEventCopyWith<$Res> {
  _$IntCounterEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<int> initialAmount, Option<int> maxAmount});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$_Initialized>
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
              as Option<int>,
      null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialAmount, this.maxAmount);

  @override
  final Option<int> initialAmount;
  @override
  final Option<int> maxAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntCounterEvent.initialized(initialAmount: $initialAmount, maxAmount: $maxAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntCounterEvent.initialized'))
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
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return initialized(initialAmount, maxAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return initialized?.call(initialAmount, maxAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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

abstract class _Initialized implements IntCounterEvent {
  const factory _Initialized(
          final Option<int> initialAmount, final Option<int> maxAmount) =
      _$_Initialized;

  Option<int> get initialAmount;
  Option<int> get maxAmount;
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
  $Res call({int newAmount});
}

/// @nodoc
class __$$_AmountUpdatedCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$_AmountUpdated>
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
              as int,
    ));
  }
}

/// @nodoc

class _$_AmountUpdated with DiagnosticableTreeMixin implements _AmountUpdated {
  const _$_AmountUpdated(this.newAmount);

  @override
  final int newAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntCounterEvent.amountUpdated(newAmount: $newAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntCounterEvent.amountUpdated'))
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
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountUpdated(newAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountUpdated?.call(newAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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

abstract class _AmountUpdated implements IntCounterEvent {
  const factory _AmountUpdated(final int newAmount) = _$_AmountUpdated;

  int get newAmount;
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
  $Res call({int addSubtractAmount});
}

/// @nodoc
class __$$_MaxAmountUpdatedCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$_MaxAmountUpdated>
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
              as int,
    ));
  }
}

/// @nodoc

class _$_MaxAmountUpdated
    with DiagnosticableTreeMixin
    implements _MaxAmountUpdated {
  const _$_MaxAmountUpdated(this.addSubtractAmount);

  @override
  final int addSubtractAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntCounterEvent.maxAmountUpdated(addSubtractAmount: $addSubtractAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntCounterEvent.maxAmountUpdated'))
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
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return maxAmountUpdated(addSubtractAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return maxAmountUpdated?.call(addSubtractAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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

abstract class _MaxAmountUpdated implements IntCounterEvent {
  const factory _MaxAmountUpdated(final int addSubtractAmount) =
      _$_MaxAmountUpdated;

  int get addSubtractAmount;
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
    extends _$IntCounterEventCopyWithImpl<$Res, _$_AmountIncreased>
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
    return 'IntCounterEvent.amountIncreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'IntCounterEvent.amountIncreased'));
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
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountIncreased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountIncreased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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

abstract class _AmountIncreased implements IntCounterEvent {
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
    extends _$IntCounterEventCopyWithImpl<$Res, _$_AmountDecreased>
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
    return 'IntCounterEvent.amountDecreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'IntCounterEvent.amountDecreased'));
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
    required TResult Function(Option<int> initialAmount, Option<int> maxAmount)
        initialized,
    required TResult Function(int newAmount) amountUpdated,
    required TResult Function(int addSubtractAmount) maxAmountUpdated,
    required TResult Function() amountIncreased,
    required TResult Function() amountDecreased,
  }) {
    return amountDecreased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult? Function(int newAmount)? amountUpdated,
    TResult? Function(int addSubtractAmount)? maxAmountUpdated,
    TResult? Function()? amountIncreased,
    TResult? Function()? amountDecreased,
  }) {
    return amountDecreased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<int> initialAmount, Option<int> maxAmount)?
        initialized,
    TResult Function(int newAmount)? amountUpdated,
    TResult Function(int addSubtractAmount)? maxAmountUpdated,
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

abstract class _AmountDecreased implements IntCounterEvent {
  const factory _AmountDecreased() = _$_AmountDecreased;
}

/// @nodoc
mixin _$IntCounterState {
  int get amount => throw _privateConstructorUsedError;
  int get maxAmount => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntCounterStateCopyWith<IntCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntCounterStateCopyWith<$Res> {
  factory $IntCounterStateCopyWith(
          IntCounterState value, $Res Function(IntCounterState) then) =
      _$IntCounterStateCopyWithImpl<$Res, IntCounterState>;
  @useResult
  $Res call(
      {int amount, int maxAmount, bool showErrorMessages, bool isUpdating});
}

/// @nodoc
class _$IntCounterStateCopyWithImpl<$Res, $Val extends IntCounterState>
    implements $IntCounterStateCopyWith<$Res> {
  _$IntCounterStateCopyWithImpl(this._value, this._then);

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
              as int,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_IntCounterStateCopyWith<$Res>
    implements $IntCounterStateCopyWith<$Res> {
  factory _$$_IntCounterStateCopyWith(
          _$_IntCounterState value, $Res Function(_$_IntCounterState) then) =
      __$$_IntCounterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount, int maxAmount, bool showErrorMessages, bool isUpdating});
}

/// @nodoc
class __$$_IntCounterStateCopyWithImpl<$Res>
    extends _$IntCounterStateCopyWithImpl<$Res, _$_IntCounterState>
    implements _$$_IntCounterStateCopyWith<$Res> {
  __$$_IntCounterStateCopyWithImpl(
      _$_IntCounterState _value, $Res Function(_$_IntCounterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? maxAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
  }) {
    return _then(_$_IntCounterState(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      maxAmount: null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_IntCounterState
    with DiagnosticableTreeMixin
    implements _IntCounterState {
  const _$_IntCounterState(
      {required this.amount,
      required this.maxAmount,
      required this.showErrorMessages,
      required this.isUpdating});

  @override
  final int amount;
  @override
  final int maxAmount;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntCounterState(amount: $amount, maxAmount: $maxAmount, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntCounterState'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('maxAmount', maxAmount))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isUpdating', isUpdating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntCounterState &&
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
  _$$_IntCounterStateCopyWith<_$_IntCounterState> get copyWith =>
      __$$_IntCounterStateCopyWithImpl<_$_IntCounterState>(this, _$identity);
}

abstract class _IntCounterState implements IntCounterState {
  const factory _IntCounterState(
      {required final int amount,
      required final int maxAmount,
      required final bool showErrorMessages,
      required final bool isUpdating}) = _$_IntCounterState;

  @override
  int get amount;
  @override
  int get maxAmount;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  @JsonKey(ignore: true)
  _$$_IntCounterStateCopyWith<_$_IntCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}
