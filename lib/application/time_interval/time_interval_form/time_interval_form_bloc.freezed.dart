// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_interval_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeIntervalFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalFormEventCopyWith<$Res> {
  factory $TimeIntervalFormEventCopyWith(TimeIntervalFormEvent value,
          $Res Function(TimeIntervalFormEvent) then) =
      _$TimeIntervalFormEventCopyWithImpl<$Res, TimeIntervalFormEvent>;
}

/// @nodoc
class _$TimeIntervalFormEventCopyWithImpl<$Res,
        $Val extends TimeIntervalFormEvent>
    implements $TimeIntervalFormEventCopyWith<$Res> {
  _$TimeIntervalFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<TimeInterval> intitialTimeInterval});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intitialTimeInterval = null,
  }) {
    return _then(_$_Initialized(
      null == intitialTimeInterval
          ? _value.intitialTimeInterval
          : intitialTimeInterval // ignore: cast_nullable_to_non_nullable
              as Option<TimeInterval>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intitialTimeInterval);

  @override
  final Option<TimeInterval> intitialTimeInterval;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.initialized(intitialTimeInterval: $intitialTimeInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.intitialTimeInterval, intitialTimeInterval) ||
                other.intitialTimeInterval == intitialTimeInterval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intitialTimeInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return initialized(intitialTimeInterval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(intitialTimeInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(intitialTimeInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TimeIntervalFormEvent {
  const factory _Initialized(final Option<TimeInterval> intitialTimeInterval) =
      _$_Initialized;

  Option<TimeInterval> get intitialTimeInterval;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IntervalNameChangedCopyWith<$Res> {
  factory _$$_IntervalNameChangedCopyWith(_$_IntervalNameChanged value,
          $Res Function(_$_IntervalNameChanged) then) =
      __$$_IntervalNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$_IntervalNameChangedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_IntervalNameChanged>
    implements _$$_IntervalNameChangedCopyWith<$Res> {
  __$$_IntervalNameChangedCopyWithImpl(_$_IntervalNameChanged _value,
      $Res Function(_$_IntervalNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$_IntervalNameChanged(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IntervalNameChanged implements _IntervalNameChanged {
  const _$_IntervalNameChanged(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onIntervalNameChanged(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntervalNameChanged &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntervalNameChangedCopyWith<_$_IntervalNameChanged> get copyWith =>
      __$$_IntervalNameChangedCopyWithImpl<_$_IntervalNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return onIntervalNameChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return onIntervalNameChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onIntervalNameChanged != null) {
      return onIntervalNameChanged(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onIntervalNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onIntervalNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onIntervalNameChanged != null) {
      return onIntervalNameChanged(this);
    }
    return orElse();
  }
}

abstract class _IntervalNameChanged implements TimeIntervalFormEvent {
  const factory _IntervalNameChanged(final String label) =
      _$_IntervalNameChanged;

  String get label;
  @JsonKey(ignore: true)
  _$$_IntervalNameChangedCopyWith<_$_IntervalNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MonthsChangedCopyWith<$Res> {
  factory _$$_MonthsChangedCopyWith(
          _$_MonthsChanged value, $Res Function(_$_MonthsChanged) then) =
      __$$_MonthsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int months});
}

/// @nodoc
class __$$_MonthsChangedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_MonthsChanged>
    implements _$$_MonthsChangedCopyWith<$Res> {
  __$$_MonthsChangedCopyWithImpl(
      _$_MonthsChanged _value, $Res Function(_$_MonthsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? months = null,
  }) {
    return _then(_$_MonthsChanged(
      null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MonthsChanged implements _MonthsChanged {
  const _$_MonthsChanged(this.months);

  @override
  final int months;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onMonthsChanged(months: $months)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthsChanged &&
            (identical(other.months, months) || other.months == months));
  }

  @override
  int get hashCode => Object.hash(runtimeType, months);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthsChangedCopyWith<_$_MonthsChanged> get copyWith =>
      __$$_MonthsChangedCopyWithImpl<_$_MonthsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return onMonthsChanged(months);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return onMonthsChanged?.call(months);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onMonthsChanged != null) {
      return onMonthsChanged(months);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onMonthsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onMonthsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onMonthsChanged != null) {
      return onMonthsChanged(this);
    }
    return orElse();
  }
}

abstract class _MonthsChanged implements TimeIntervalFormEvent {
  const factory _MonthsChanged(final int months) = _$_MonthsChanged;

  int get months;
  @JsonKey(ignore: true)
  _$$_MonthsChangedCopyWith<_$_MonthsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeeksChangedCopyWith<$Res> {
  factory _$$_WeeksChangedCopyWith(
          _$_WeeksChanged value, $Res Function(_$_WeeksChanged) then) =
      __$$_WeeksChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int weeks});
}

/// @nodoc
class __$$_WeeksChangedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_WeeksChanged>
    implements _$$_WeeksChangedCopyWith<$Res> {
  __$$_WeeksChangedCopyWithImpl(
      _$_WeeksChanged _value, $Res Function(_$_WeeksChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeks = null,
  }) {
    return _then(_$_WeeksChanged(
      null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeeksChanged implements _WeeksChanged {
  const _$_WeeksChanged(this.weeks);

  @override
  final int weeks;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onWeeksChanged(weeks: $weeks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeksChanged &&
            (identical(other.weeks, weeks) || other.weeks == weeks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weeks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeksChangedCopyWith<_$_WeeksChanged> get copyWith =>
      __$$_WeeksChangedCopyWithImpl<_$_WeeksChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return onWeeksChanged(weeks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return onWeeksChanged?.call(weeks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onWeeksChanged != null) {
      return onWeeksChanged(weeks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onWeeksChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onWeeksChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onWeeksChanged != null) {
      return onWeeksChanged(this);
    }
    return orElse();
  }
}

abstract class _WeeksChanged implements TimeIntervalFormEvent {
  const factory _WeeksChanged(final int weeks) = _$_WeeksChanged;

  int get weeks;
  @JsonKey(ignore: true)
  _$$_WeeksChangedCopyWith<_$_WeeksChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DaysChangedCopyWith<$Res> {
  factory _$$_DaysChangedCopyWith(
          _$_DaysChanged value, $Res Function(_$_DaysChanged) then) =
      __$$_DaysChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int days});
}

/// @nodoc
class __$$_DaysChangedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_DaysChanged>
    implements _$$_DaysChangedCopyWith<$Res> {
  __$$_DaysChangedCopyWithImpl(
      _$_DaysChanged _value, $Res Function(_$_DaysChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$_DaysChanged(
      null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DaysChanged implements _DaysChanged {
  const _$_DaysChanged(this.days);

  @override
  final int days;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onDaysChanged(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaysChanged &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaysChangedCopyWith<_$_DaysChanged> get copyWith =>
      __$$_DaysChangedCopyWithImpl<_$_DaysChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return onDaysChanged(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return onDaysChanged?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDaysChanged != null) {
      return onDaysChanged(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDaysChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDaysChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDaysChanged != null) {
      return onDaysChanged(this);
    }
    return orElse();
  }
}

abstract class _DaysChanged implements TimeIntervalFormEvent {
  const factory _DaysChanged(final int days) = _$_DaysChanged;

  int get days;
  @JsonKey(ignore: true)
  _$$_DaysChangedCopyWith<_$_DaysChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IntervalDurationChangedCopyWith<$Res> {
  factory _$$_IntervalDurationChangedCopyWith(_$_IntervalDurationChanged value,
          $Res Function(_$_IntervalDurationChanged) then) =
      __$$_IntervalDurationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration intervalDuration});
}

/// @nodoc
class __$$_IntervalDurationChangedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res,
        _$_IntervalDurationChanged>
    implements _$$_IntervalDurationChangedCopyWith<$Res> {
  __$$_IntervalDurationChangedCopyWithImpl(_$_IntervalDurationChanged _value,
      $Res Function(_$_IntervalDurationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalDuration = null,
  }) {
    return _then(_$_IntervalDurationChanged(
      null == intervalDuration
          ? _value.intervalDuration
          : intervalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_IntervalDurationChanged implements _IntervalDurationChanged {
  const _$_IntervalDurationChanged(this.intervalDuration);

  @override
  final Duration intervalDuration;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onIntervalDurationChanged(intervalDuration: $intervalDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntervalDurationChanged &&
            (identical(other.intervalDuration, intervalDuration) ||
                other.intervalDuration == intervalDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intervalDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntervalDurationChangedCopyWith<_$_IntervalDurationChanged>
      get copyWith =>
          __$$_IntervalDurationChangedCopyWithImpl<_$_IntervalDurationChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return onIntervalDurationChanged(intervalDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return onIntervalDurationChanged?.call(intervalDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onIntervalDurationChanged != null) {
      return onIntervalDurationChanged(intervalDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onIntervalDurationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onIntervalDurationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onIntervalDurationChanged != null) {
      return onIntervalDurationChanged(this);
    }
    return orElse();
  }
}

abstract class _IntervalDurationChanged implements TimeIntervalFormEvent {
  const factory _IntervalDurationChanged(final Duration intervalDuration) =
      _$_IntervalDurationChanged;

  Duration get intervalDuration;
  @JsonKey(ignore: true)
  _$$_IntervalDurationChangedCopyWith<_$_IntervalDurationChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TimeIntervalFormEvent.saved()';
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
    required TResult Function(Option<TimeInterval> intitialTimeInterval)
        initialized,
    required TResult Function(String label) onIntervalNameChanged,
    required TResult Function(int months) onMonthsChanged,
    required TResult Function(int weeks) onWeeksChanged,
    required TResult Function(int days) onDaysChanged,
    required TResult Function(Duration intervalDuration)
        onIntervalDurationChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult? Function(String label)? onIntervalNameChanged,
    TResult? Function(int months)? onMonthsChanged,
    TResult? Function(int weeks)? onWeeksChanged,
    TResult? Function(int days)? onDaysChanged,
    TResult? Function(Duration intervalDuration)? onIntervalDurationChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TimeInterval> intitialTimeInterval)? initialized,
    TResult Function(String label)? onIntervalNameChanged,
    TResult Function(int months)? onMonthsChanged,
    TResult Function(int weeks)? onWeeksChanged,
    TResult Function(int days)? onDaysChanged,
    TResult Function(Duration intervalDuration)? onIntervalDurationChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IntervalNameChanged value) onIntervalNameChanged,
    required TResult Function(_MonthsChanged value) onMonthsChanged,
    required TResult Function(_WeeksChanged value) onWeeksChanged,
    required TResult Function(_DaysChanged value) onDaysChanged,
    required TResult Function(_IntervalDurationChanged value)
        onIntervalDurationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult? Function(_MonthsChanged value)? onMonthsChanged,
    TResult? Function(_WeeksChanged value)? onWeeksChanged,
    TResult? Function(_DaysChanged value)? onDaysChanged,
    TResult? Function(_IntervalDurationChanged value)?
        onIntervalDurationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IntervalNameChanged value)? onIntervalNameChanged,
    TResult Function(_MonthsChanged value)? onMonthsChanged,
    TResult Function(_WeeksChanged value)? onWeeksChanged,
    TResult Function(_DaysChanged value)? onDaysChanged,
    TResult Function(_IntervalDurationChanged value)? onIntervalDurationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TimeIntervalFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$TimeIntervalFormState {
  TimeInterval get timeInterval => throw _privateConstructorUsedError;
  int get months => throw _privateConstructorUsedError;
  int get weeks => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<TimeIntervalFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeIntervalFormStateCopyWith<TimeIntervalFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalFormStateCopyWith<$Res> {
  factory $TimeIntervalFormStateCopyWith(TimeIntervalFormState value,
          $Res Function(TimeIntervalFormState) then) =
      _$TimeIntervalFormStateCopyWithImpl<$Res, TimeIntervalFormState>;
  @useResult
  $Res call(
      {TimeInterval timeInterval,
      int months,
      int weeks,
      int days,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<TimeIntervalFailure, Unit>> saveFailureOrSuccessOption});

  $TimeIntervalCopyWith<$Res> get timeInterval;
}

/// @nodoc
class _$TimeIntervalFormStateCopyWithImpl<$Res,
        $Val extends TimeIntervalFormState>
    implements $TimeIntervalFormStateCopyWith<$Res> {
  _$TimeIntervalFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeInterval = null,
    Object? months = null,
    Object? weeks = null,
    Object? days = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      timeInterval: null == timeInterval
          ? _value.timeInterval
          : timeInterval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
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
              as Option<Either<TimeIntervalFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get timeInterval {
    return $TimeIntervalCopyWith<$Res>(_value.timeInterval, (value) {
      return _then(_value.copyWith(timeInterval: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimeIntervalFormStateCopyWith<$Res>
    implements $TimeIntervalFormStateCopyWith<$Res> {
  factory _$$_TimeIntervalFormStateCopyWith(_$_TimeIntervalFormState value,
          $Res Function(_$_TimeIntervalFormState) then) =
      __$$_TimeIntervalFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeInterval timeInterval,
      int months,
      int weeks,
      int days,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<TimeIntervalFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TimeIntervalCopyWith<$Res> get timeInterval;
}

/// @nodoc
class __$$_TimeIntervalFormStateCopyWithImpl<$Res>
    extends _$TimeIntervalFormStateCopyWithImpl<$Res, _$_TimeIntervalFormState>
    implements _$$_TimeIntervalFormStateCopyWith<$Res> {
  __$$_TimeIntervalFormStateCopyWithImpl(_$_TimeIntervalFormState _value,
      $Res Function(_$_TimeIntervalFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeInterval = null,
    Object? months = null,
    Object? weeks = null,
    Object? days = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_TimeIntervalFormState(
      timeInterval: null == timeInterval
          ? _value.timeInterval
          : timeInterval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
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
              as Option<Either<TimeIntervalFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TimeIntervalFormState implements _TimeIntervalFormState {
  const _$_TimeIntervalFormState(
      {required this.timeInterval,
      required this.months,
      required this.weeks,
      required this.days,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final TimeInterval timeInterval;
  @override
  final int months;
  @override
  final int weeks;
  @override
  final int days;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<TimeIntervalFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TimeIntervalFormState(timeInterval: $timeInterval, months: $months, weeks: $weeks, days: $days, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeIntervalFormState &&
            (identical(other.timeInterval, timeInterval) ||
                other.timeInterval == timeInterval) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.weeks, weeks) || other.weeks == weeks) &&
            (identical(other.days, days) || other.days == days) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      timeInterval,
      months,
      weeks,
      days,
      showErrorMessages,
      isUpdating,
      isSaving,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeIntervalFormStateCopyWith<_$_TimeIntervalFormState> get copyWith =>
      __$$_TimeIntervalFormStateCopyWithImpl<_$_TimeIntervalFormState>(
          this, _$identity);
}

abstract class _TimeIntervalFormState implements TimeIntervalFormState {
  const factory _TimeIntervalFormState(
      {required final TimeInterval timeInterval,
      required final int months,
      required final int weeks,
      required final int days,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<TimeIntervalFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_TimeIntervalFormState;

  @override
  TimeInterval get timeInterval;
  @override
  int get months;
  @override
  int get weeks;
  @override
  int get days;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<TimeIntervalFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TimeIntervalFormStateCopyWith<_$_TimeIntervalFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
