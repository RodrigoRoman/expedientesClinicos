// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_amount_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseAmountFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DoseAmount> initialDoseAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseAmountFormEventCopyWith<$Res> {
  factory $DoseAmountFormEventCopyWith(
          DoseAmountFormEvent value, $Res Function(DoseAmountFormEvent) then) =
      _$DoseAmountFormEventCopyWithImpl<$Res, DoseAmountFormEvent>;
}

/// @nodoc
class _$DoseAmountFormEventCopyWithImpl<$Res, $Val extends DoseAmountFormEvent>
    implements $DoseAmountFormEventCopyWith<$Res> {
  _$DoseAmountFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<DoseAmount> initialDoseAmountOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DoseAmountFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDoseAmountOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialDoseAmountOption
          ? _value.initialDoseAmountOption
          : initialDoseAmountOption // ignore: cast_nullable_to_non_nullable
              as Option<DoseAmount>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialDoseAmountOption);

  @override
  final Option<DoseAmount> initialDoseAmountOption;

  @override
  String toString() {
    return 'DoseAmountFormEvent.intial(initialDoseAmountOption: $initialDoseAmountOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(
                    other.initialDoseAmountOption, initialDoseAmountOption) ||
                other.initialDoseAmountOption == initialDoseAmountOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialDoseAmountOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DoseAmount> initialDoseAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) {
    return intial(initialDoseAmountOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(initialDoseAmountOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(initialDoseAmountOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DoseAmountFormEvent {
  const factory _Initialized(final Option<DoseAmount> initialDoseAmountOption) =
      _$_Initialized;

  Option<DoseAmount> get initialDoseAmountOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LabelChangedCopyWith<$Res> {
  factory _$$_LabelChangedCopyWith(
          _$_LabelChanged value, $Res Function(_$_LabelChanged) then) =
      __$$_LabelChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$_LabelChangedCopyWithImpl<$Res>
    extends _$DoseAmountFormEventCopyWithImpl<$Res, _$_LabelChanged>
    implements _$$_LabelChangedCopyWith<$Res> {
  __$$_LabelChangedCopyWithImpl(
      _$_LabelChanged _value, $Res Function(_$_LabelChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$_LabelChanged(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LabelChanged implements _LabelChanged {
  const _$_LabelChanged(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'DoseAmountFormEvent.labelChanged(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelChanged &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelChangedCopyWith<_$_LabelChanged> get copyWith =>
      __$$_LabelChangedCopyWithImpl<_$_LabelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DoseAmount> initialDoseAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) {
    return labelChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return labelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return labelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelChanged implements DoseAmountFormEvent {
  const factory _LabelChanged(final String label) = _$_LabelChanged;

  String get label;
  @JsonKey(ignore: true)
  _$$_LabelChangedCopyWith<_$_LabelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountChangedCopyWith<$Res> {
  factory _$$_AmountChangedCopyWith(
          _$_AmountChanged value, $Res Function(_$_AmountChanged) then) =
      __$$_AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$_AmountChangedCopyWithImpl<$Res>
    extends _$DoseAmountFormEventCopyWithImpl<$Res, _$_AmountChanged>
    implements _$$_AmountChangedCopyWith<$Res> {
  __$$_AmountChangedCopyWithImpl(
      _$_AmountChanged _value, $Res Function(_$_AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_AmountChanged(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AmountChanged implements _AmountChanged {
  const _$_AmountChanged(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'DoseAmountFormEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountChanged &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      __$$_AmountChangedCopyWithImpl<_$_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DoseAmount> initialDoseAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements DoseAmountFormEvent {
  const factory _AmountChanged(final double amount) = _$_AmountChanged;

  double get amount;
  @JsonKey(ignore: true)
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$DoseAmountFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'DoseAmountFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DoseAmount> initialDoseAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DoseAmount> initialDoseAmountOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DoseAmountFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$DoseAmountFormState {
  DoseAmount get doseAmount => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DoseAmountFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoseAmountFormStateCopyWith<DoseAmountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseAmountFormStateCopyWith<$Res> {
  factory $DoseAmountFormStateCopyWith(
          DoseAmountFormState value, $Res Function(DoseAmountFormState) then) =
      _$DoseAmountFormStateCopyWithImpl<$Res, DoseAmountFormState>;
  @useResult
  $Res call(
      {DoseAmount doseAmount,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseAmountFailures, Unit>> saveFailureOrSuccessOption});

  $DoseAmountCopyWith<$Res> get doseAmount;
}

/// @nodoc
class _$DoseAmountFormStateCopyWithImpl<$Res, $Val extends DoseAmountFormState>
    implements $DoseAmountFormStateCopyWith<$Res> {
  _$DoseAmountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as DoseAmount,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DoseAmountFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseAmountCopyWith<$Res> get doseAmount {
    return $DoseAmountCopyWith<$Res>(_value.doseAmount, (value) {
      return _then(_value.copyWith(doseAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoseAmountFormStateCopyWith<$Res>
    implements $DoseAmountFormStateCopyWith<$Res> {
  factory _$$_DoseAmountFormStateCopyWith(_$_DoseAmountFormState value,
          $Res Function(_$_DoseAmountFormState) then) =
      __$$_DoseAmountFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoseAmount doseAmount,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseAmountFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $DoseAmountCopyWith<$Res> get doseAmount;
}

/// @nodoc
class __$$_DoseAmountFormStateCopyWithImpl<$Res>
    extends _$DoseAmountFormStateCopyWithImpl<$Res, _$_DoseAmountFormState>
    implements _$$_DoseAmountFormStateCopyWith<$Res> {
  __$$_DoseAmountFormStateCopyWithImpl(_$_DoseAmountFormState _value,
      $Res Function(_$_DoseAmountFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_DoseAmountFormState(
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as DoseAmount,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DoseAmountFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DoseAmountFormState implements _DoseAmountFormState {
  const _$_DoseAmountFormState(
      {required this.doseAmount,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final DoseAmount doseAmount;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<DoseAmountFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'DoseAmountFormState(doseAmount: $doseAmount, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseAmountFormState &&
            (identical(other.doseAmount, doseAmount) ||
                other.doseAmount == doseAmount) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseAmount, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseAmountFormStateCopyWith<_$_DoseAmountFormState> get copyWith =>
      __$$_DoseAmountFormStateCopyWithImpl<_$_DoseAmountFormState>(
          this, _$identity);
}

abstract class _DoseAmountFormState implements DoseAmountFormState {
  const factory _DoseAmountFormState(
      {required final DoseAmount doseAmount,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<DoseAmountFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_DoseAmountFormState;

  @override
  DoseAmount get doseAmount;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<DoseAmountFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DoseAmountFormStateCopyWith<_$_DoseAmountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
