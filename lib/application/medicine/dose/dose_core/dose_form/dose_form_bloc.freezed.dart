// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseFormEventCopyWith<$Res> {
  factory $DoseFormEventCopyWith(
          DoseFormEvent value, $Res Function(DoseFormEvent) then) =
      _$DoseFormEventCopyWithImpl<$Res, DoseFormEvent>;
}

/// @nodoc
class _$DoseFormEventCopyWithImpl<$Res, $Val extends DoseFormEvent>
    implements $DoseFormEventCopyWith<$Res> {
  _$DoseFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Dose> intialMedicineOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intialMedicineOption = null,
  }) {
    return _then(_$_Initialized(
      null == intialMedicineOption
          ? _value.intialMedicineOption
          : intialMedicineOption // ignore: cast_nullable_to_non_nullable
              as Option<Dose>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intialMedicineOption);

  @override
  final Option<Dose> intialMedicineOption;

  @override
  String toString() {
    return 'DoseFormEvent.intial(intialMedicineOption: $intialMedicineOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.intialMedicineOption, intialMedicineOption) ||
                other.intialMedicineOption == intialMedicineOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intialMedicineOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return intial(intialMedicineOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(intialMedicineOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(intialMedicineOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DoseFormEvent {
  const factory _Initialized(final Option<Dose> intialMedicineOption) =
      _$_Initialized;

  Option<Dose> get intialMedicineOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DayHoursDoseChangedCopyWith<$Res> {
  factory _$$_DayHoursDoseChangedCopyWith(_$_DayHoursDoseChanged value,
          $Res Function(_$_DayHoursDoseChanged) then) =
      __$$_DayHoursDoseChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DayHoursDose dayHoursDose});

  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
}

/// @nodoc
class __$$_DayHoursDoseChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_DayHoursDoseChanged>
    implements _$$_DayHoursDoseChangedCopyWith<$Res> {
  __$$_DayHoursDoseChangedCopyWithImpl(_$_DayHoursDoseChanged _value,
      $Res Function(_$_DayHoursDoseChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDose = null,
  }) {
    return _then(_$_DayHoursDoseChanged(
      null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseCopyWith<$Res> get dayHoursDose {
    return $DayHoursDoseCopyWith<$Res>(_value.dayHoursDose, (value) {
      return _then(_value.copyWith(dayHoursDose: value));
    });
  }
}

/// @nodoc

class _$_DayHoursDoseChanged implements _DayHoursDoseChanged {
  const _$_DayHoursDoseChanged(this.dayHoursDose);

  @override
  final DayHoursDose dayHoursDose;

  @override
  String toString() {
    return 'DoseFormEvent.dayHoursDoseChanged(dayHoursDose: $dayHoursDose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayHoursDoseChanged &&
            (identical(other.dayHoursDose, dayHoursDose) ||
                other.dayHoursDose == dayHoursDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayHoursDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayHoursDoseChangedCopyWith<_$_DayHoursDoseChanged> get copyWith =>
      __$$_DayHoursDoseChangedCopyWithImpl<_$_DayHoursDoseChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return dayHoursDoseChanged(dayHoursDose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return dayHoursDoseChanged?.call(dayHoursDose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dayHoursDoseChanged != null) {
      return dayHoursDoseChanged(dayHoursDose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dayHoursDoseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dayHoursDoseChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dayHoursDoseChanged != null) {
      return dayHoursDoseChanged(this);
    }
    return orElse();
  }
}

abstract class _DayHoursDoseChanged implements DoseFormEvent {
  const factory _DayHoursDoseChanged(final DayHoursDose dayHoursDose) =
      _$_DayHoursDoseChanged;

  DayHoursDose get dayHoursDose;
  @JsonKey(ignore: true)
  _$$_DayHoursDoseChangedCopyWith<_$_DayHoursDoseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DurationChangedCopyWith<$Res> {
  factory _$$_DurationChangedCopyWith(
          _$_DurationChanged value, $Res Function(_$_DurationChanged) then) =
      __$$_DurationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeInterval duration});

  $TimeIntervalCopyWith<$Res> get duration;
}

/// @nodoc
class __$$_DurationChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_DurationChanged>
    implements _$$_DurationChangedCopyWith<$Res> {
  __$$_DurationChangedCopyWithImpl(
      _$_DurationChanged _value, $Res Function(_$_DurationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_DurationChanged(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get duration {
    return $TimeIntervalCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }
}

/// @nodoc

class _$_DurationChanged implements _DurationChanged {
  const _$_DurationChanged(this.duration);

  @override
  final TimeInterval duration;

  @override
  String toString() {
    return 'DoseFormEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DurationChanged &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DurationChangedCopyWith<_$_DurationChanged> get copyWith =>
      __$$_DurationChangedCopyWithImpl<_$_DurationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return durationChanged?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return durationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements DoseFormEvent {
  const factory _DurationChanged(final TimeInterval duration) =
      _$_DurationChanged;

  TimeInterval get duration;
  @JsonKey(ignore: true)
  _$$_DurationChangedCopyWith<_$_DurationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeekDaysDoseChangedCopyWith<$Res> {
  factory _$$_WeekDaysDoseChangedCopyWith(_$_WeekDaysDoseChanged value,
          $Res Function(_$_WeekDaysDoseChanged) then) =
      __$$_WeekDaysDoseChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDose weekDaysDose});

  $WeekDaysDoseCopyWith<$Res> get weekDaysDose;
}

/// @nodoc
class __$$_WeekDaysDoseChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_WeekDaysDoseChanged>
    implements _$$_WeekDaysDoseChangedCopyWith<$Res> {
  __$$_WeekDaysDoseChangedCopyWithImpl(_$_WeekDaysDoseChanged _value,
      $Res Function(_$_WeekDaysDoseChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDose = null,
  }) {
    return _then(_$_WeekDaysDoseChanged(
      null == weekDaysDose
          ? _value.weekDaysDose
          : weekDaysDose // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseCopyWith<$Res> get weekDaysDose {
    return $WeekDaysDoseCopyWith<$Res>(_value.weekDaysDose, (value) {
      return _then(_value.copyWith(weekDaysDose: value));
    });
  }
}

/// @nodoc

class _$_WeekDaysDoseChanged implements _WeekDaysDoseChanged {
  const _$_WeekDaysDoseChanged(this.weekDaysDose);

  @override
  final WeekDaysDose weekDaysDose;

  @override
  String toString() {
    return 'DoseFormEvent.weekDaysChanged(weekDaysDose: $weekDaysDose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekDaysDoseChanged &&
            (identical(other.weekDaysDose, weekDaysDose) ||
                other.weekDaysDose == weekDaysDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekDaysDoseChangedCopyWith<_$_WeekDaysDoseChanged> get copyWith =>
      __$$_WeekDaysDoseChangedCopyWithImpl<_$_WeekDaysDoseChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return weekDaysChanged(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return weekDaysChanged?.call(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (weekDaysChanged != null) {
      return weekDaysChanged(weekDaysDose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return weekDaysChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return weekDaysChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (weekDaysChanged != null) {
      return weekDaysChanged(this);
    }
    return orElse();
  }
}

abstract class _WeekDaysDoseChanged implements DoseFormEvent {
  const factory _WeekDaysDoseChanged(final WeekDaysDose weekDaysDose) =
      _$_WeekDaysDoseChanged;

  WeekDaysDose get weekDaysDose;
  @JsonKey(ignore: true)
  _$$_WeekDaysDoseChangedCopyWith<_$_WeekDaysDoseChanged> get copyWith =>
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
    extends _$DoseFormEventCopyWithImpl<$Res, _$_LabelChanged>
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
    return 'DoseFormEvent.labelChanged(label: $label)';
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
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return labelChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
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
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return labelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return labelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelChanged implements DoseFormEvent {
  const factory _LabelChanged(final String label) = _$_LabelChanged;

  String get label;
  @JsonKey(ignore: true)
  _$$_LabelChangedCopyWith<_$_LabelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'DoseFormEvent.saved()';
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
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(DayHoursDose dayHoursDose) dayHoursDoseChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(WeekDaysDose weekDaysDose) weekDaysChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(DayHoursDose dayHoursDose)? dayHoursDoseChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(WeekDaysDose weekDaysDose)? weekDaysChanged,
    TResult Function(String label)? labelChanged,
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
    required TResult Function(_DayHoursDoseChanged value) dayHoursDoseChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_WeekDaysDoseChanged value) weekDaysChanged,
    required TResult Function(_LabelChanged value) labelChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult? Function(_LabelChanged value)? labelChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_DayHoursDoseChanged value)? dayHoursDoseChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_WeekDaysDoseChanged value)? weekDaysChanged,
    TResult Function(_LabelChanged value)? labelChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DoseFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$DoseFormState {
  Dose get dose => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DoseFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoseFormStateCopyWith<DoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseFormStateCopyWith<$Res> {
  factory $DoseFormStateCopyWith(
          DoseFormState value, $Res Function(DoseFormState) then) =
      _$DoseFormStateCopyWithImpl<$Res, DoseFormState>;
  @useResult
  $Res call(
      {Dose dose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption});

  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class _$DoseFormStateCopyWithImpl<$Res, $Val extends DoseFormState>
    implements $DoseFormStateCopyWith<$Res> {
  _$DoseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
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
              as Option<Either<DoseFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseCopyWith<$Res> get dose {
    return $DoseCopyWith<$Res>(_value.dose, (value) {
      return _then(_value.copyWith(dose: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoseFormStateCopyWith<$Res>
    implements $DoseFormStateCopyWith<$Res> {
  factory _$$_DoseFormStateCopyWith(
          _$_DoseFormState value, $Res Function(_$_DoseFormState) then) =
      __$$_DoseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dose dose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class __$$_DoseFormStateCopyWithImpl<$Res>
    extends _$DoseFormStateCopyWithImpl<$Res, _$_DoseFormState>
    implements _$$_DoseFormStateCopyWith<$Res> {
  __$$_DoseFormStateCopyWithImpl(
      _$_DoseFormState _value, $Res Function(_$_DoseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_DoseFormState(
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
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
              as Option<Either<DoseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DoseFormState implements _DoseFormState {
  const _$_DoseFormState(
      {required this.dose,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Dose dose;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'DoseFormState(dose: $dose, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseFormState &&
            (identical(other.dose, dose) || other.dose == dose) &&
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
  int get hashCode => Object.hash(runtimeType, dose, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseFormStateCopyWith<_$_DoseFormState> get copyWith =>
      __$$_DoseFormStateCopyWithImpl<_$_DoseFormState>(this, _$identity);
}

abstract class _DoseFormState implements DoseFormState {
  const factory _DoseFormState(
      {required final Dose dose,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<DoseFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_DoseFormState;

  @override
  Dose get dose;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<DoseFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DoseFormStateCopyWith<_$_DoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
