part of 'state_renderer_bloc.dart';

@freezed
abstract class StateRendererEvent with _$StateRendererEvent {
  const factory StateRendererEvent.popUpSuccess(
      {required String title,
      required String message,
      String? until,
      double? width,
      double? height}) = PopUpSuccess;
  const factory StateRendererEvent.popUpError(
      {required String title,
      required String message,
      String? until,
      double? width,
      double? height}) = PopUpError;
  const factory StateRendererEvent.popUpServerError(
      {required String title, required String message}) = PopUpServerError;
  const factory StateRendererEvent.popUpLoading(
      {required String title,
      required String message,
      String? until,
      double? width,
      double? height}) = PopUpLoading;
  const factory StateRendererEvent.popUpForm(
      {required String title,
      required Widget bodyWidget,
      double? width,
      double? height,
      String? until}) = PopUpForm;
  const factory StateRendererEvent.fullErrorScreen(
      {required String title,
      required String message,
      String? until}) = FullErrorScreen;
  const factory StateRendererEvent.fullScreenForm(
      {required String title,
      required Widget bodyWidget,
      required String message,
      String? until}) = FullScreenForm;
  const factory StateRendererEvent.contentScreen() = ContentScreen;
  const factory StateRendererEvent.empty() = EmptySreen;
}
