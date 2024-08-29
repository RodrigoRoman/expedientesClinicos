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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<TimeInterval> intitialTimeInterval});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intitialTimeInterval = null,
  }) {
    return _then(_$InitializedImpl(
      null == intitialTimeInterval
          ? _value.intitialTimeInterval
          : intitialTimeInterval // ignore: cast_nullable_to_non_nullable
              as Option<TimeInterval>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.intitialTimeInterval);

  @override
  final Option<TimeInterval> intitialTimeInterval;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.initialized(intitialTimeInterval: $intitialTimeInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.intitialTimeInterval, intitialTimeInterval) ||
                other.intitialTimeInterval == intitialTimeInterval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intitialTimeInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
      _$InitializedImpl;

  Option<TimeInterval> get intitialTimeInterval;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntervalNameChangedImplCopyWith<$Res> {
  factory _$$IntervalNameChangedImplCopyWith(_$IntervalNameChangedImpl value,
          $Res Function(_$IntervalNameChangedImpl) then) =
      __$$IntervalNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$IntervalNameChangedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$IntervalNameChangedImpl>
    implements _$$IntervalNameChangedImplCopyWith<$Res> {
  __$$IntervalNameChangedImplCopyWithImpl(_$IntervalNameChangedImpl _value,
      $Res Function(_$IntervalNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$IntervalNameChangedImpl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IntervalNameChangedImpl implements _IntervalNameChanged {
  const _$IntervalNameChangedImpl(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onIntervalNameChanged(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntervalNameChangedImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntervalNameChangedImplCopyWith<_$IntervalNameChangedImpl> get copyWith =>
      __$$IntervalNameChangedImplCopyWithImpl<_$IntervalNameChangedImpl>(
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
      _$IntervalNameChangedImpl;

  String get label;
  @JsonKey(ignore: true)
  _$$IntervalNameChangedImplCopyWith<_$IntervalNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonthsChangedImplCopyWith<$Res> {
  factory _$$MonthsChangedImplCopyWith(
          _$MonthsChangedImpl value, $Res Function(_$MonthsChangedImpl) then) =
      __$$MonthsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int months});
}

/// @nodoc
class __$$MonthsChangedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$MonthsChangedImpl>
    implements _$$MonthsChangedImplCopyWith<$Res> {
  __$$MonthsChangedImplCopyWithImpl(
      _$MonthsChangedImpl _value, $Res Function(_$MonthsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? months = null,
  }) {
    return _then(_$MonthsChangedImpl(
      null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MonthsChangedImpl implements _MonthsChanged {
  const _$MonthsChangedImpl(this.months);

  @override
  final int months;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onMonthsChanged(months: $months)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthsChangedImpl &&
            (identical(other.months, months) || other.months == months));
  }

  @override
  int get hashCode => Object.hash(runtimeType, months);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthsChangedImplCopyWith<_$MonthsChangedImpl> get copyWith =>
      __$$MonthsChangedImplCopyWithImpl<_$MonthsChangedImpl>(this, _$identity);

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
  const factory _MonthsChanged(final int months) = _$MonthsChangedImpl;

  int get months;
  @JsonKey(ignore: true)
  _$$MonthsChangedImplCopyWith<_$MonthsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeeksChangedImplCopyWith<$Res> {
  factory _$$WeeksChangedImplCopyWith(
          _$WeeksChangedImpl value, $Res Function(_$WeeksChangedImpl) then) =
      __$$WeeksChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int weeks});
}

/// @nodoc
class __$$WeeksChangedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$WeeksChangedImpl>
    implements _$$WeeksChangedImplCopyWith<$Res> {
  __$$WeeksChangedImplCopyWithImpl(
      _$WeeksChangedImpl _value, $Res Function(_$WeeksChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeks = null,
  }) {
    return _then(_$WeeksChangedImpl(
      null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WeeksChangedImpl implements _WeeksChanged {
  const _$WeeksChangedImpl(this.weeks);

  @override
  final int weeks;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onWeeksChanged(weeks: $weeks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeksChangedImpl &&
            (identical(other.weeks, weeks) || other.weeks == weeks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weeks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeksChangedImplCopyWith<_$WeeksChangedImpl> get copyWith =>
      __$$WeeksChangedImplCopyWithImpl<_$WeeksChangedImpl>(this, _$identity);

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
  const factory _WeeksChanged(final int weeks) = _$WeeksChangedImpl;

  int get weeks;
  @JsonKey(ignore: true)
  _$$WeeksChangedImplCopyWith<_$WeeksChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DaysChangedImplCopyWith<$Res> {
  factory _$$DaysChangedImplCopyWith(
          _$DaysChangedImpl value, $Res Function(_$DaysChangedImpl) then) =
      __$$DaysChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int days});
}

/// @nodoc
class __$$DaysChangedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$DaysChangedImpl>
    implements _$$DaysChangedImplCopyWith<$Res> {
  __$$DaysChangedImplCopyWithImpl(
      _$DaysChangedImpl _value, $Res Function(_$DaysChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$DaysChangedImpl(
      null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DaysChangedImpl implements _DaysChanged {
  const _$DaysChangedImpl(this.days);

  @override
  final int days;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onDaysChanged(days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaysChangedImpl &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaysChangedImplCopyWith<_$DaysChangedImpl> get copyWith =>
      __$$DaysChangedImplCopyWithImpl<_$DaysChangedImpl>(this, _$identity);

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
  const factory _DaysChanged(final int days) = _$DaysChangedImpl;

  int get days;
  @JsonKey(ignore: true)
  _$$DaysChangedImplCopyWith<_$DaysChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntervalDurationChangedImplCopyWith<$Res> {
  factory _$$IntervalDurationChangedImplCopyWith(
          _$IntervalDurationChangedImpl value,
          $Res Function(_$IntervalDurationChangedImpl) then) =
      __$$IntervalDurationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration intervalDuration});
}

/// @nodoc
class __$$IntervalDurationChangedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res,
        _$IntervalDurationChangedImpl>
    implements _$$IntervalDurationChangedImplCopyWith<$Res> {
  __$$IntervalDurationChangedImplCopyWithImpl(
      _$IntervalDurationChangedImpl _value,
      $Res Function(_$IntervalDurationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalDuration = null,
  }) {
    return _then(_$IntervalDurationChangedImpl(
      null == intervalDuration
          ? _value.intervalDuration
          : intervalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$IntervalDurationChangedImpl implements _IntervalDurationChanged {
  const _$IntervalDurationChangedImpl(this.intervalDuration);

  @override
  final Duration intervalDuration;

  @override
  String toString() {
    return 'TimeIntervalFormEvent.onIntervalDurationChanged(intervalDuration: $intervalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntervalDurationChangedImpl &&
            (identical(other.intervalDuration, intervalDuration) ||
                other.intervalDuration == intervalDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intervalDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntervalDurationChangedImplCopyWith<_$IntervalDurationChangedImpl>
      get copyWith => __$$IntervalDurationChangedImplCopyWithImpl<
          _$IntervalDurationChangedImpl>(this, _$identity);

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
      _$IntervalDurationChangedImpl;

  Duration get intervalDuration;
  @JsonKey(ignore: true)
  _$$IntervalDurationChangedImplCopyWith<_$IntervalDurationChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'TimeIntervalFormEvent.saved()';
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
  const factory _Saved() = _$SavedImpl;
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
abstract class _$$TimeIntervalFormStateImplCopyWith<$Res>
    implements $TimeIntervalFormStateCopyWith<$Res> {
  factory _$$TimeIntervalFormStateImplCopyWith(
          _$TimeIntervalFormStateImpl value,
          $Res Function(_$TimeIntervalFormStateImpl) then) =
      __$$TimeIntervalFormStateImplCopyWithImpl<$Res>;
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
class __$$TimeIntervalFormStateImplCopyWithImpl<$Res>
    extends _$TimeIntervalFormStateCopyWithImpl<$Res,
        _$TimeIntervalFormStateImpl>
    implements _$$TimeIntervalFormStateImplCopyWith<$Res> {
  __$$TimeIntervalFormStateImplCopyWithImpl(_$TimeIntervalFormStateImpl _value,
      $Res Function(_$TimeIntervalFormStateImpl) _then)
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
    return _then(_$TimeIntervalFormStateImpl(
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

class _$TimeIntervalFormStateImpl implements _TimeIntervalFormState {
  const _$TimeIntervalFormStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeIntervalFormStateImpl &&
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
  _$$TimeIntervalFormStateImplCopyWith<_$TimeIntervalFormStateImpl>
      get copyWith => __$$TimeIntervalFormStateImplCopyWithImpl<
          _$TimeIntervalFormStateImpl>(this, _$identity);
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
          saveFailureOrSuccessOption}) = _$TimeIntervalFormStateImpl;

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
  _$$TimeIntervalFormStateImplCopyWith<_$TimeIntervalFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
