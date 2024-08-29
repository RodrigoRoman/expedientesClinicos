// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_double_amount_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LabelDoubleAmountFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<LabelDoubleAmount> initialLabelDoubleAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
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
abstract class $LabelDoubleAmountFormEventCopyWith<$Res> {
  factory $LabelDoubleAmountFormEventCopyWith(LabelDoubleAmountFormEvent value,
          $Res Function(LabelDoubleAmountFormEvent) then) =
      _$LabelDoubleAmountFormEventCopyWithImpl<$Res,
          LabelDoubleAmountFormEvent>;
}

/// @nodoc
class _$LabelDoubleAmountFormEventCopyWithImpl<$Res,
        $Val extends LabelDoubleAmountFormEvent>
    implements $LabelDoubleAmountFormEventCopyWith<$Res> {
  _$LabelDoubleAmountFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<LabelDoubleAmount> initialLabelDoubleAmountOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialLabelDoubleAmountOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialLabelDoubleAmountOption
          ? _value.initialLabelDoubleAmountOption
          : initialLabelDoubleAmountOption // ignore: cast_nullable_to_non_nullable
              as Option<LabelDoubleAmount>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialLabelDoubleAmountOption);

  @override
  final Option<LabelDoubleAmount> initialLabelDoubleAmountOption;

  @override
  String toString() {
    return 'LabelDoubleAmountFormEvent.intial(initialLabelDoubleAmountOption: $initialLabelDoubleAmountOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialLabelDoubleAmountOption,
                    initialLabelDoubleAmountOption) ||
                other.initialLabelDoubleAmountOption ==
                    initialLabelDoubleAmountOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialLabelDoubleAmountOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<LabelDoubleAmount> initialLabelDoubleAmountOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(double amount) amountChanged,
    required TResult Function() saved,
  }) {
    return intial(initialLabelDoubleAmountOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(initialLabelDoubleAmountOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult Function(String label)? labelChanged,
    TResult Function(double amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(initialLabelDoubleAmountOption);
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

abstract class _Initialized implements LabelDoubleAmountFormEvent {
  const factory _Initialized(
          final Option<LabelDoubleAmount> initialLabelDoubleAmountOption) =
      _$InitializedImpl;

  Option<LabelDoubleAmount> get initialLabelDoubleAmountOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LabelChangedImplCopyWith<$Res> {
  factory _$$LabelChangedImplCopyWith(
          _$LabelChangedImpl value, $Res Function(_$LabelChangedImpl) then) =
      __$$LabelChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$LabelChangedImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountFormEventCopyWithImpl<$Res, _$LabelChangedImpl>
    implements _$$LabelChangedImplCopyWith<$Res> {
  __$$LabelChangedImplCopyWithImpl(
      _$LabelChangedImpl _value, $Res Function(_$LabelChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$LabelChangedImpl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LabelChangedImpl implements _LabelChanged {
  const _$LabelChangedImpl(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'LabelDoubleAmountFormEvent.labelChanged(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelChangedImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelChangedImplCopyWith<_$LabelChangedImpl> get copyWith =>
      __$$LabelChangedImplCopyWithImpl<_$LabelChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<LabelDoubleAmount> initialLabelDoubleAmountOption)
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
    TResult? Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
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

abstract class _LabelChanged implements LabelDoubleAmountFormEvent {
  const factory _LabelChanged(final String label) = _$LabelChangedImpl;

  String get label;
  @JsonKey(ignore: true)
  _$$LabelChangedImplCopyWith<_$LabelChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedImplCopyWith<$Res> {
  factory _$$AmountChangedImplCopyWith(
          _$AmountChangedImpl value, $Res Function(_$AmountChangedImpl) then) =
      __$$AmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$AmountChangedImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountFormEventCopyWithImpl<$Res, _$AmountChangedImpl>
    implements _$$AmountChangedImplCopyWith<$Res> {
  __$$AmountChangedImplCopyWithImpl(
      _$AmountChangedImpl _value, $Res Function(_$AmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AmountChangedImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AmountChangedImpl implements _AmountChanged {
  const _$AmountChangedImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'LabelDoubleAmountFormEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      __$$AmountChangedImplCopyWithImpl<_$AmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<LabelDoubleAmount> initialLabelDoubleAmountOption)
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
    TResult? Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
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

abstract class _AmountChanged implements LabelDoubleAmountFormEvent {
  const factory _AmountChanged(final double amount) = _$AmountChangedImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'LabelDoubleAmountFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<LabelDoubleAmount> initialLabelDoubleAmountOption)
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
    TResult? Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(double amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LabelDoubleAmount> initialLabelDoubleAmountOption)?
        intial,
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

abstract class _Saved implements LabelDoubleAmountFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$LabelDoubleAmountFormState {
  LabelDoubleAmount get labelDoubleAmount => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<LabelDoubleAmountFailure, Unit>>
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LabelDoubleAmountFormStateCopyWith<LabelDoubleAmountFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDoubleAmountFormStateCopyWith<$Res> {
  factory $LabelDoubleAmountFormStateCopyWith(LabelDoubleAmountFormState value,
          $Res Function(LabelDoubleAmountFormState) then) =
      _$LabelDoubleAmountFormStateCopyWithImpl<$Res,
          LabelDoubleAmountFormState>;
  @useResult
  $Res call(
      {LabelDoubleAmount labelDoubleAmount,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<LabelDoubleAmountFailure, Unit>>
          saveFailureOrSuccessOption});

  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount;
}

/// @nodoc
class _$LabelDoubleAmountFormStateCopyWithImpl<$Res,
        $Val extends LabelDoubleAmountFormState>
    implements $LabelDoubleAmountFormStateCopyWith<$Res> {
  _$LabelDoubleAmountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      labelDoubleAmount: null == labelDoubleAmount
          ? _value.labelDoubleAmount
          : labelDoubleAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
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
              as Option<Either<LabelDoubleAmountFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount {
    return $LabelDoubleAmountCopyWith<$Res>(_value.labelDoubleAmount, (value) {
      return _then(_value.copyWith(labelDoubleAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LabelDoubleAmountFormStateImplCopyWith<$Res>
    implements $LabelDoubleAmountFormStateCopyWith<$Res> {
  factory _$$LabelDoubleAmountFormStateImplCopyWith(
          _$LabelDoubleAmountFormStateImpl value,
          $Res Function(_$LabelDoubleAmountFormStateImpl) then) =
      __$$LabelDoubleAmountFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LabelDoubleAmount labelDoubleAmount,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<LabelDoubleAmountFailure, Unit>>
          saveFailureOrSuccessOption});

  @override
  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount;
}

/// @nodoc
class __$$LabelDoubleAmountFormStateImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountFormStateCopyWithImpl<$Res,
        _$LabelDoubleAmountFormStateImpl>
    implements _$$LabelDoubleAmountFormStateImplCopyWith<$Res> {
  __$$LabelDoubleAmountFormStateImplCopyWithImpl(
      _$LabelDoubleAmountFormStateImpl _value,
      $Res Function(_$LabelDoubleAmountFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmount = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$LabelDoubleAmountFormStateImpl(
      labelDoubleAmount: null == labelDoubleAmount
          ? _value.labelDoubleAmount
          : labelDoubleAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
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
              as Option<Either<LabelDoubleAmountFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$LabelDoubleAmountFormStateImpl implements _LabelDoubleAmountFormState {
  const _$LabelDoubleAmountFormStateImpl(
      {required this.labelDoubleAmount,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final LabelDoubleAmount labelDoubleAmount;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<LabelDoubleAmountFailure, Unit>>
      saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'LabelDoubleAmountFormState(labelDoubleAmount: $labelDoubleAmount, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelDoubleAmountFormStateImpl &&
            (identical(other.labelDoubleAmount, labelDoubleAmount) ||
                other.labelDoubleAmount == labelDoubleAmount) &&
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
  int get hashCode => Object.hash(runtimeType, labelDoubleAmount,
      showErrorMessages, isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelDoubleAmountFormStateImplCopyWith<_$LabelDoubleAmountFormStateImpl>
      get copyWith => __$$LabelDoubleAmountFormStateImplCopyWithImpl<
          _$LabelDoubleAmountFormStateImpl>(this, _$identity);
}

abstract class _LabelDoubleAmountFormState
    implements LabelDoubleAmountFormState {
  const factory _LabelDoubleAmountFormState(
      {required final LabelDoubleAmount labelDoubleAmount,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<LabelDoubleAmountFailure, Unit>>
          saveFailureOrSuccessOption}) = _$LabelDoubleAmountFormStateImpl;

  @override
  LabelDoubleAmount get labelDoubleAmount;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<LabelDoubleAmountFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LabelDoubleAmountFormStateImplCopyWith<_$LabelDoubleAmountFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
