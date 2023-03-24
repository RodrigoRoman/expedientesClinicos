part of 'state_renderer_bloc.dart';

@freezed
abstract class StateRendererEvent with _$StateRendererEvent {
  const factory StateRendererEvent.popUpSuccess(String title, String message,
      String? until, double? width, double? height) = PopUpSuccess;
  const factory StateRendererEvent.popUpError(String title, String message,
      String? until, double? width, double? height) = PopUpError;
  const factory StateRendererEvent.popUpServerError(
      String title, String message) = PopUpServerError;
  const factory StateRendererEvent.popUpLoading(String title, String message,
      String? until, double? width, double? height) = PopUpLoading;
  const factory StateRendererEvent.popUpForm(String title, Widget bodyWidget,
      double? width, double? height, String? until) = PopUpForm;
  const factory StateRendererEvent.fullErrorScreen(
      String title, String message, String? until) = FullErrorScreen;
  const factory StateRendererEvent.fullScreenForm(
          String title, Widget bodyWidget, String message, String? until) =
      FullScreenForm;
  const factory StateRendererEvent.contentScreen() = ContentScreen;
  const factory StateRendererEvent.empty() = EmptySreen;
}
