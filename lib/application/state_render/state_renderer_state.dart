part of 'state_renderer_bloc.dart';

@freezed
class StateRendererState with _$StateRendererState {
  const factory StateRendererState(
      {required String message,
      required Function retryAction,
      required String title,
      required bool popPrevioues,
      required double width,
      required double height,
      Widget? body,
      required StateRendererType stateRender}) = _StateRendererState;
  factory StateRendererState.initial() => StateRendererState(
      message: '',
      retryAction: () => print(''),
      title: '',
      width: 300,
      height: 300,
      popPrevioues: true,
      stateRender: StateRendererType.CONTENT_SCREEN_STATE);
}
