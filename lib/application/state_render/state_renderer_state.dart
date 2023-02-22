part of 'state_renderer_bloc.dart';

@freezed
class StateRendererState with _$StateRendererState {
  const factory StateRendererState(
      {required String message,
      required Function retryAction,
      required String title,
      required String? until,
      required double width,
      required double height,
      Widget? body,
      required StateRendererType stateRender}) = _StateRendererState;
  factory StateRendererState.initial() => StateRendererState(
      message: '',
      retryAction: () => print(''),
      title: '',
      width: 300,
      height: 500,
      until: null,
      stateRender: StateRendererType.CONTENT_SCREEN_STATE);
}
