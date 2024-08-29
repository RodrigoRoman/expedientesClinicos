// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_days_dose_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeekDaysDoseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<int> weekDays) weekDaysChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<int> weekDays)? weekDaysChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<int> weekDays)? weekDaysChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_WeekDaysChanged value) weekDaysChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseFormEventCopyWith<$Res> {
  factory $WeekDaysDoseFormEventCopyWith(WeekDaysDoseFormEvent value,
          $Res Function(WeekDaysDoseFormEvent) then) =
      _$WeekDaysDoseFormEventCopyWithImpl<$Res, WeekDaysDoseFormEvent>;
}

/// @nodoc
class _$WeekDaysDoseFormEventCopyWithImpl<$Res,
        $Val extends WeekDaysDoseFormEvent>
    implements $WeekDaysDoseFormEventCopyWith<$Res> {
  _$WeekDaysDoseFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<WeekDaysDose> initialWeekDaysDoseOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialWeekDaysDoseOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialWeekDaysDoseOption
          ? _value.initialWeekDaysDoseOption
          : initialWeekDaysDoseOption // ignore: cast_nullable_to_non_nullable
              as Option<WeekDaysDose>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialWeekDaysDoseOption);

  @override
  final Option<WeekDaysDose> initialWeekDaysDoseOption;

  @override
  String toString() {
    return 'WeekDaysDoseFormEvent.intial(initialWeekDaysDoseOption: $initialWeekDaysDoseOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialWeekDaysDoseOption,
                    initialWeekDaysDoseOption) ||
                other.initialWeekDaysDoseOption == initialWeekDaysDoseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialWeekDaysDoseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<int> weekDays) weekDaysChanged,
    required TResult Function() saved,
  }) {
    return intial(initialWeekDaysDoseOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<int> weekDays)? weekDaysChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(initialWeekDaysDoseOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<int> weekDays)? weekDaysChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(initialWeekDaysDoseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_WeekDaysChanged value) weekDaysChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements WeekDaysDoseFormEvent {
  const factory _Initialized(
      final Option<WeekDaysDose> initialWeekDaysDoseOption) = _$InitializedImpl;

  Option<WeekDaysDose> get initialWeekDaysDoseOption;
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
    extends _$WeekDaysDoseFormEventCopyWithImpl<$Res, _$LabelChangedImpl>
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
    return 'WeekDaysDoseFormEvent.labelChanged(label: $label)';
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
    required TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<int> weekDays) weekDaysChanged,
    required TResult Function() saved,
  }) {
    return labelChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<int> weekDays)? weekDaysChanged,
    TResult? Function()? saved,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<int> weekDays)? weekDaysChanged,
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
    required TResult Function(_WeekDaysChanged value) weekDaysChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return labelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return labelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelChanged implements WeekDaysDoseFormEvent {
  const factory _LabelChanged(final String label) = _$LabelChangedImpl;

  String get label;
  @JsonKey(ignore: true)
  _$$LabelChangedImplCopyWith<_$LabelChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeekDaysChangedImplCopyWith<$Res> {
  factory _$$WeekDaysChangedImplCopyWith(_$WeekDaysChangedImpl value,
          $Res Function(_$WeekDaysChangedImpl) then) =
      __$$WeekDaysChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> weekDays});
}

/// @nodoc
class __$$WeekDaysChangedImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseFormEventCopyWithImpl<$Res, _$WeekDaysChangedImpl>
    implements _$$WeekDaysChangedImplCopyWith<$Res> {
  __$$WeekDaysChangedImplCopyWithImpl(
      _$WeekDaysChangedImpl _value, $Res Function(_$WeekDaysChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDays = null,
  }) {
    return _then(_$WeekDaysChangedImpl(
      null == weekDays
          ? _value._weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$WeekDaysChangedImpl implements _WeekDaysChanged {
  const _$WeekDaysChangedImpl(final List<int> weekDays) : _weekDays = weekDays;

  final List<int> _weekDays;
  @override
  List<int> get weekDays {
    if (_weekDays is EqualUnmodifiableListView) return _weekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekDays);
  }

  @override
  String toString() {
    return 'WeekDaysDoseFormEvent.weekDaysChanged(weekDays: $weekDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekDaysChangedImpl &&
            const DeepCollectionEquality().equals(other._weekDays, _weekDays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weekDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekDaysChangedImplCopyWith<_$WeekDaysChangedImpl> get copyWith =>
      __$$WeekDaysChangedImplCopyWithImpl<_$WeekDaysChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<int> weekDays) weekDaysChanged,
    required TResult Function() saved,
  }) {
    return weekDaysChanged(weekDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<int> weekDays)? weekDaysChanged,
    TResult? Function()? saved,
  }) {
    return weekDaysChanged?.call(weekDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<int> weekDays)? weekDaysChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (weekDaysChanged != null) {
      return weekDaysChanged(weekDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_WeekDaysChanged value) weekDaysChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return weekDaysChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return weekDaysChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (weekDaysChanged != null) {
      return weekDaysChanged(this);
    }
    return orElse();
  }
}

abstract class _WeekDaysChanged implements WeekDaysDoseFormEvent {
  const factory _WeekDaysChanged(final List<int> weekDays) =
      _$WeekDaysChangedImpl;

  List<int> get weekDays;
  @JsonKey(ignore: true)
  _$$WeekDaysChangedImplCopyWith<_$WeekDaysChangedImpl> get copyWith =>
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
    extends _$WeekDaysDoseFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'WeekDaysDoseFormEvent.saved()';
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
    required TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<int> weekDays) weekDaysChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<int> weekDays)? weekDaysChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<WeekDaysDose> initialWeekDaysDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<int> weekDays)? weekDaysChanged,
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
    required TResult Function(_WeekDaysChanged value) weekDaysChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_WeekDaysChanged value)? weekDaysChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements WeekDaysDoseFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$WeekDaysDoseFormState {
  WeekDaysDose get weekDays => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<WeekDaysDoseFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekDaysDoseFormStateCopyWith<WeekDaysDoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseFormStateCopyWith<$Res> {
  factory $WeekDaysDoseFormStateCopyWith(WeekDaysDoseFormState value,
          $Res Function(WeekDaysDoseFormState) then) =
      _$WeekDaysDoseFormStateCopyWithImpl<$Res, WeekDaysDoseFormState>;
  @useResult
  $Res call(
      {WeekDaysDose weekDays,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<WeekDaysDoseFailures, Unit>> saveFailureOrSuccessOption});

  $WeekDaysDoseCopyWith<$Res> get weekDays;
}

/// @nodoc
class _$WeekDaysDoseFormStateCopyWithImpl<$Res,
        $Val extends WeekDaysDoseFormState>
    implements $WeekDaysDoseFormStateCopyWith<$Res> {
  _$WeekDaysDoseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDays = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
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
              as Option<Either<WeekDaysDoseFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseCopyWith<$Res> get weekDays {
    return $WeekDaysDoseCopyWith<$Res>(_value.weekDays, (value) {
      return _then(_value.copyWith(weekDays: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekDaysDoseFormStateImplCopyWith<$Res>
    implements $WeekDaysDoseFormStateCopyWith<$Res> {
  factory _$$WeekDaysDoseFormStateImplCopyWith(
          _$WeekDaysDoseFormStateImpl value,
          $Res Function(_$WeekDaysDoseFormStateImpl) then) =
      __$$WeekDaysDoseFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeekDaysDose weekDays,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<WeekDaysDoseFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $WeekDaysDoseCopyWith<$Res> get weekDays;
}

/// @nodoc
class __$$WeekDaysDoseFormStateImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseFormStateCopyWithImpl<$Res,
        _$WeekDaysDoseFormStateImpl>
    implements _$$WeekDaysDoseFormStateImplCopyWith<$Res> {
  __$$WeekDaysDoseFormStateImplCopyWithImpl(_$WeekDaysDoseFormStateImpl _value,
      $Res Function(_$WeekDaysDoseFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDays = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$WeekDaysDoseFormStateImpl(
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
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
              as Option<Either<WeekDaysDoseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$WeekDaysDoseFormStateImpl implements _WeekDaysDoseFormState {
  const _$WeekDaysDoseFormStateImpl(
      {required this.weekDays,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final WeekDaysDose weekDays;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<WeekDaysDoseFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'WeekDaysDoseFormState(weekDays: $weekDays, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekDaysDoseFormStateImpl &&
            (identical(other.weekDays, weekDays) ||
                other.weekDays == weekDays) &&
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
  int get hashCode => Object.hash(runtimeType, weekDays, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekDaysDoseFormStateImplCopyWith<_$WeekDaysDoseFormStateImpl>
      get copyWith => __$$WeekDaysDoseFormStateImplCopyWithImpl<
          _$WeekDaysDoseFormStateImpl>(this, _$identity);
}

abstract class _WeekDaysDoseFormState implements WeekDaysDoseFormState {
  const factory _WeekDaysDoseFormState(
      {required final WeekDaysDose weekDays,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<WeekDaysDoseFailures, Unit>>
          saveFailureOrSuccessOption}) = _$WeekDaysDoseFormStateImpl;

  @override
  WeekDaysDose get weekDays;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<WeekDaysDoseFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$WeekDaysDoseFormStateImplCopyWith<_$WeekDaysDoseFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
