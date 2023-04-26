// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_hours_dose_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DayHoursDoseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DayHoursDose> initialDayHourDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<HourTime> listHours) listHoursChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<HourTime> listHours)? listHoursChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<HourTime> listHours)? listHoursChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_ListHoursChanged value) listHoursChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_ListHoursChanged value)? listHoursChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_ListHoursChanged value)? listHoursChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayHoursDoseFormEventCopyWith<$Res> {
  factory $DayHoursDoseFormEventCopyWith(DayHoursDoseFormEvent value,
          $Res Function(DayHoursDoseFormEvent) then) =
      _$DayHoursDoseFormEventCopyWithImpl<$Res, DayHoursDoseFormEvent>;
}

/// @nodoc
class _$DayHoursDoseFormEventCopyWithImpl<$Res,
        $Val extends DayHoursDoseFormEvent>
    implements $DayHoursDoseFormEventCopyWith<$Res> {
  _$DayHoursDoseFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<DayHoursDose> initialDayHourDoseOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DayHoursDoseFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDayHourDoseOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialDayHourDoseOption
          ? _value.initialDayHourDoseOption
          : initialDayHourDoseOption // ignore: cast_nullable_to_non_nullable
              as Option<DayHoursDose>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialDayHourDoseOption);

  @override
  final Option<DayHoursDose> initialDayHourDoseOption;

  @override
  String toString() {
    return 'DayHoursDoseFormEvent.intial(initialDayHourDoseOption: $initialDayHourDoseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(
                    other.initialDayHourDoseOption, initialDayHourDoseOption) ||
                other.initialDayHourDoseOption == initialDayHourDoseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialDayHourDoseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DayHoursDose> initialDayHourDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<HourTime> listHours) listHoursChanged,
    required TResult Function() saved,
  }) {
    return intial(initialDayHourDoseOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<HourTime> listHours)? listHoursChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(initialDayHourDoseOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<HourTime> listHours)? listHoursChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(initialDayHourDoseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_ListHoursChanged value) listHoursChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_ListHoursChanged value)? listHoursChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_ListHoursChanged value)? listHoursChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DayHoursDoseFormEvent {
  const factory _Initialized(
      final Option<DayHoursDose> initialDayHourDoseOption) = _$_Initialized;

  Option<DayHoursDose> get initialDayHourDoseOption;
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
    extends _$DayHoursDoseFormEventCopyWithImpl<$Res, _$_LabelChanged>
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
    return 'DayHoursDoseFormEvent.labelChanged(label: $label)';
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
    required TResult Function(Option<DayHoursDose> initialDayHourDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<HourTime> listHours) listHoursChanged,
    required TResult Function() saved,
  }) {
    return labelChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<HourTime> listHours)? listHoursChanged,
    TResult? Function()? saved,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<HourTime> listHours)? listHoursChanged,
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
    required TResult Function(_ListHoursChanged value) listHoursChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return labelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_ListHoursChanged value)? listHoursChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return labelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_ListHoursChanged value)? listHoursChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelChanged implements DayHoursDoseFormEvent {
  const factory _LabelChanged(final String label) = _$_LabelChanged;

  String get label;
  @JsonKey(ignore: true)
  _$$_LabelChangedCopyWith<_$_LabelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ListHoursChangedCopyWith<$Res> {
  factory _$$_ListHoursChangedCopyWith(
          _$_ListHoursChanged value, $Res Function(_$_ListHoursChanged) then) =
      __$$_ListHoursChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HourTime> listHours});
}

/// @nodoc
class __$$_ListHoursChangedCopyWithImpl<$Res>
    extends _$DayHoursDoseFormEventCopyWithImpl<$Res, _$_ListHoursChanged>
    implements _$$_ListHoursChangedCopyWith<$Res> {
  __$$_ListHoursChangedCopyWithImpl(
      _$_ListHoursChanged _value, $Res Function(_$_ListHoursChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listHours = null,
  }) {
    return _then(_$_ListHoursChanged(
      null == listHours
          ? _value._listHours
          : listHours // ignore: cast_nullable_to_non_nullable
              as List<HourTime>,
    ));
  }
}

/// @nodoc

class _$_ListHoursChanged implements _ListHoursChanged {
  const _$_ListHoursChanged(final List<HourTime> listHours)
      : _listHours = listHours;

  final List<HourTime> _listHours;
  @override
  List<HourTime> get listHours {
    if (_listHours is EqualUnmodifiableListView) return _listHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listHours);
  }

  @override
  String toString() {
    return 'DayHoursDoseFormEvent.listHoursChanged(listHours: $listHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListHoursChanged &&
            const DeepCollectionEquality()
                .equals(other._listHours, _listHours));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listHours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListHoursChangedCopyWith<_$_ListHoursChanged> get copyWith =>
      __$$_ListHoursChangedCopyWithImpl<_$_ListHoursChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DayHoursDose> initialDayHourDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<HourTime> listHours) listHoursChanged,
    required TResult Function() saved,
  }) {
    return listHoursChanged(listHours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<HourTime> listHours)? listHoursChanged,
    TResult? Function()? saved,
  }) {
    return listHoursChanged?.call(listHours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<HourTime> listHours)? listHoursChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (listHoursChanged != null) {
      return listHoursChanged(listHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_ListHoursChanged value) listHoursChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return listHoursChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_ListHoursChanged value)? listHoursChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return listHoursChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_ListHoursChanged value)? listHoursChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (listHoursChanged != null) {
      return listHoursChanged(this);
    }
    return orElse();
  }
}

abstract class _ListHoursChanged implements DayHoursDoseFormEvent {
  const factory _ListHoursChanged(final List<HourTime> listHours) =
      _$_ListHoursChanged;

  List<HourTime> get listHours;
  @JsonKey(ignore: true)
  _$$_ListHoursChangedCopyWith<_$_ListHoursChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$DayHoursDoseFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'DayHoursDoseFormEvent.saved()';
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
    required TResult Function(Option<DayHoursDose> initialDayHourDoseOption)
        intial,
    required TResult Function(String label) labelChanged,
    required TResult Function(List<HourTime> listHours) listHoursChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult? Function(String label)? labelChanged,
    TResult? Function(List<HourTime> listHours)? listHoursChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DayHoursDose> initialDayHourDoseOption)? intial,
    TResult Function(String label)? labelChanged,
    TResult Function(List<HourTime> listHours)? listHoursChanged,
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
    required TResult Function(_ListHoursChanged value) listHoursChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_ListHoursChanged value)? listHoursChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_ListHoursChanged value)? listHoursChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DayHoursDoseFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$DayHoursDoseFormState {
  DayHoursDose get dayHoursDose => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DayHoursDoseFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayHoursDoseFormStateCopyWith<DayHoursDoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayHoursDoseFormStateCopyWith<$Res> {
  factory $DayHoursDoseFormStateCopyWith(DayHoursDoseFormState value,
          $Res Function(DayHoursDoseFormState) then) =
      _$DayHoursDoseFormStateCopyWithImpl<$Res, DayHoursDoseFormState>;
  @useResult
  $Res call(
      {DayHoursDose dayHoursDose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DayHoursDoseFailures, Unit>> saveFailureOrSuccessOption});

  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
}

/// @nodoc
class _$DayHoursDoseFormStateCopyWithImpl<$Res,
        $Val extends DayHoursDoseFormState>
    implements $DayHoursDoseFormStateCopyWith<$Res> {
  _$DayHoursDoseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      dayHoursDose: null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
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
              as Option<Either<DayHoursDoseFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseCopyWith<$Res> get dayHoursDose {
    return $DayHoursDoseCopyWith<$Res>(_value.dayHoursDose, (value) {
      return _then(_value.copyWith(dayHoursDose: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DayHoursDoseFormStateCopyWith<$Res>
    implements $DayHoursDoseFormStateCopyWith<$Res> {
  factory _$$_DayHoursDoseFormStateCopyWith(_$_DayHoursDoseFormState value,
          $Res Function(_$_DayHoursDoseFormState) then) =
      __$$_DayHoursDoseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DayHoursDose dayHoursDose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DayHoursDoseFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
}

/// @nodoc
class __$$_DayHoursDoseFormStateCopyWithImpl<$Res>
    extends _$DayHoursDoseFormStateCopyWithImpl<$Res, _$_DayHoursDoseFormState>
    implements _$$_DayHoursDoseFormStateCopyWith<$Res> {
  __$$_DayHoursDoseFormStateCopyWithImpl(_$_DayHoursDoseFormState _value,
      $Res Function(_$_DayHoursDoseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_DayHoursDoseFormState(
      dayHoursDose: null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
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
              as Option<Either<DayHoursDoseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DayHoursDoseFormState implements _DayHoursDoseFormState {
  const _$_DayHoursDoseFormState(
      {required this.dayHoursDose,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final DayHoursDose dayHoursDose;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<DayHoursDoseFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'DayHoursDoseFormState(dayHoursDose: $dayHoursDose, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayHoursDoseFormState &&
            (identical(other.dayHoursDose, dayHoursDose) ||
                other.dayHoursDose == dayHoursDose) &&
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
  int get hashCode => Object.hash(runtimeType, dayHoursDose, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayHoursDoseFormStateCopyWith<_$_DayHoursDoseFormState> get copyWith =>
      __$$_DayHoursDoseFormStateCopyWithImpl<_$_DayHoursDoseFormState>(
          this, _$identity);
}

abstract class _DayHoursDoseFormState implements DayHoursDoseFormState {
  const factory _DayHoursDoseFormState(
      {required final DayHoursDose dayHoursDose,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<DayHoursDoseFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_DayHoursDoseFormState;

  @override
  DayHoursDose get dayHoursDose;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<DayHoursDoseFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DayHoursDoseFormStateCopyWith<_$_DayHoursDoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
