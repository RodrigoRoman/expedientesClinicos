part of 'state_renderer_bloc.dart';

@freezed
class StateRendererState with _$StateRendererState {
  const factory StateRendererState(
      {required String message,
      required Function retryAction,
      required String title,
      required bool popPrevioues,
      Widget? body,
      required StateRendererType stateRender}) = _StateRendererState;
  factory StateRendererState.initial() => StateRendererState(
      message: '',
      retryAction: () => print(''),
      title: '',
      popPrevioues: true,
      stateRender: StateRendererType.CONTENT_SCREEN_STATE);
}
