part of 'dynamic_form_watcher_bloc.dart';

@freezed
class DynamicFormWatcherState with _$DynamicFormWatcherState {
  const factory DynamicFormWatcherState.initial() = _Initial;
  const factory DynamicFormWatcherState.loadInProgress() = _LoadInProgress;
  const factory DynamicFormWatcherState.loadSuccess(
      KtList<FormSection> formSections) = _LoadSuccess;

  const factory DynamicFormWatcherState.loadFailure(
      DynamicFormFailures dynamicFormFailure) = _DynamicFormFailure;
}
