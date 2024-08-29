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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<int> initialAmount, Option<int> maxAmount});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$InitializedImpl>
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
              as Option<int>,
      null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl with DiagnosticableTreeMixin implements _Initialized {
  const _$InitializedImpl(this.initialAmount, this.maxAmount);

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
      _$InitializedImpl;

  Option<int> get initialAmount;
  Option<int> get maxAmount;
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
  $Res call({int newAmount});
}

/// @nodoc
class __$$AmountUpdatedImplCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$AmountUpdatedImpl>
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
              as int,
    ));
  }
}

/// @nodoc

class _$AmountUpdatedImpl
    with DiagnosticableTreeMixin
    implements _AmountUpdated {
  const _$AmountUpdatedImpl(this.newAmount);

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
  const factory _AmountUpdated(final int newAmount) = _$AmountUpdatedImpl;

  int get newAmount;
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
  $Res call({int addSubtractAmount});
}

/// @nodoc
class __$$MaxAmountUpdatedImplCopyWithImpl<$Res>
    extends _$IntCounterEventCopyWithImpl<$Res, _$MaxAmountUpdatedImpl>
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
              as int,
    ));
  }
}

/// @nodoc

class _$MaxAmountUpdatedImpl
    with DiagnosticableTreeMixin
    implements _MaxAmountUpdated {
  const _$MaxAmountUpdatedImpl(this.addSubtractAmount);

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
      _$MaxAmountUpdatedImpl;

  int get addSubtractAmount;
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
    extends _$IntCounterEventCopyWithImpl<$Res, _$AmountIncreasedImpl>
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
    return 'IntCounterEvent.amountIncreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'IntCounterEvent.amountIncreased'));
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
    extends _$IntCounterEventCopyWithImpl<$Res, _$AmountDecreasedImpl>
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
    return 'IntCounterEvent.amountDecreased()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'IntCounterEvent.amountDecreased'));
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
  const factory _AmountDecreased() = _$AmountDecreasedImpl;
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
abstract class _$$IntCounterStateImplCopyWith<$Res>
    implements $IntCounterStateCopyWith<$Res> {
  factory _$$IntCounterStateImplCopyWith(_$IntCounterStateImpl value,
          $Res Function(_$IntCounterStateImpl) then) =
      __$$IntCounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount, int maxAmount, bool showErrorMessages, bool isUpdating});
}

/// @nodoc
class __$$IntCounterStateImplCopyWithImpl<$Res>
    extends _$IntCounterStateCopyWithImpl<$Res, _$IntCounterStateImpl>
    implements _$$IntCounterStateImplCopyWith<$Res> {
  __$$IntCounterStateImplCopyWithImpl(
      _$IntCounterStateImpl _value, $Res Function(_$IntCounterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? maxAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
  }) {
    return _then(_$IntCounterStateImpl(
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

class _$IntCounterStateImpl
    with DiagnosticableTreeMixin
    implements _IntCounterState {
  const _$IntCounterStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntCounterStateImpl &&
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
  _$$IntCounterStateImplCopyWith<_$IntCounterStateImpl> get copyWith =>
      __$$IntCounterStateImplCopyWithImpl<_$IntCounterStateImpl>(
          this, _$identity);
}

abstract class _IntCounterState implements IntCounterState {
  const factory _IntCounterState(
      {required final int amount,
      required final int maxAmount,
      required final bool showErrorMessages,
      required final bool isUpdating}) = _$IntCounterStateImpl;

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
  _$$IntCounterStateImplCopyWith<_$IntCounterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
