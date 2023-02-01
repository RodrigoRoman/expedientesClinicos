part of 'state_renderer_bloc.dart';

@freezed
abstract class StateRendererEvent with _$StateRendererEvent {
  const factory StateRendererEvent.popUpSuccess(
      String title, String message, bool popPrevioues) = PopUpSuccess;
  const factory StateRendererEvent.popUpError(
      String title, String message, bool popPrevioues) = PopUpError;
  const factory StateRendererEvent.popUpServerError(
      String title, String message) = PopUpServerError;
  const factory StateRendererEvent.popUpLoading(
      String title, String message, bool popPrevioues) = PopUpLoading;
  const factory StateRendererEvent.popUpForm(
      String title, Widget bodyWidget, bool popPrevioues) = PopUpForm;
  const factory StateRendererEvent.fullErrorSreen(
      String title, String message, bool popPrevioues) = FullErrorSreen;
  const factory StateRendererEvent.contentScreen() = ContentScreen;
  const factory StateRendererEvent.empty() = EmptySreen;
}
