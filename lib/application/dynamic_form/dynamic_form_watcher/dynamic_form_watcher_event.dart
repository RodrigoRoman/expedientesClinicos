part of 'dynamic_form_watcher_bloc.dart';

@freezed
class DynamicFormWatcherEvent with _$DynamicFormWatcherEvent {
  const factory DynamicFormWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory DynamicFormWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory DynamicFormWatcherEvent.formSectionReceived(
      Either<DynamicFormFailures, KtList<FormSection>>
          failureOrDynamicForms) = _FormSectionReceived;
}
