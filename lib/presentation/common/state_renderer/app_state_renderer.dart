import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/presentation/common/state_renderer/full_screen_state.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/popup_dialog.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class StateRenderer extends StatelessWidget {
  final String? message;
  final String? title;
  final Function retryActionFunction;
  final Widget? bodyWidget;
  final double dialogHeight;
  final double dialogWidth;
  final StateRendererType stateRendererType;
  const StateRenderer(
      {required this.stateRendererType,
      String? message,
      String? title,
      Widget? bodyWidget,
      dialogHeight,
      dialogWidth,
      required this.retryActionFunction,
      Key? key})
      : message = message ?? AppStrings.loading,
        title = title ?? AppStrings.empty,
        dialogHeight = dialogHeight ?? 500,
        dialogWidth = dialogWidth ?? 300,
        bodyWidget = bodyWidget ?? const SizedBox(),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return StateAppWidget(
        stateRendererType: stateRendererType,
        title: title,
        dialogHeight: dialogHeight,
        dialogWidth: dialogWidth,
        bodyWidget: bodyWidget,
        message: message,
        retryActionFunction: retryActionFunction);
  }
}

class StateAppWidget extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String message;
  final String? title;
  final double dialogHeight;
  final double dialogWidth;
  final Widget? bodyWidget;
  final Function retryActionFunction;
  const StateAppWidget(
      {required this.stateRendererType,
      required this.title,
      required this.bodyWidget,
      required this.retryActionFunction,
      required this.dialogHeight,
      required this.dialogWidth,
      message,
      Key? key})
      : message = message ?? AppStrings.empty,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    switch (stateRendererType) {
      case StateRendererType.POPUP_LOADING_STATE:
        return PopUpDialog(
          children: [AnimatedImage(animationName: AppAssetNames.loading)],
          dialogHeight: dialogHeight,
          dialogWidth: dialogWidth,
        );
      case StateRendererType.POPUP_ERROR_STATE:
        return PopUpDialog(
          children: [
            const AnimatedImage(animationName: AppAssetNames.error),
            StateMessage(message: message),
            RetryButton(
              buttonTitle: AppStrings.ok,
              retryAction: retryActionFunction,
            )
          ],
          dialogHeight: dialogHeight,
          dialogWidth: dialogWidth,
        );
      case StateRendererType.POPUP_SERVER_ERROR_STATE:
        return PopUpDialog(
          children: [
            const AnimatedImage(animationName: AppAssetNames.lost),
            StateMessage(message: message),
            RetryButton(
              buttonTitle: AppStrings.ok,
              retryAction: retryActionFunction,
            )
          ],
          dialogHeight: dialogHeight,
          dialogWidth: dialogWidth,
        );
      case StateRendererType.POPUP_SUCCESS:
        return PopUpDialog(children: [
          Expanded(
              flex: 1,
              child: const AnimatedImage(animationName: AppAssetNames.success)),
          Expanded(flex: 2, child: StateMessage(message: message)),
          Expanded(
            flex: 1,
            child: RetryButton(
              buttonTitle: AppStrings.ok,
              retryAction: retryActionFunction,
            ),
          )
        ], dialogHeight: dialogHeight, dialogWidth: dialogWidth);
      case StateRendererType.POPUP_FORM:
        return PopUpDialog(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: FittedBox(
                child: Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            SizedBox(
                width: dialogWidth,
                height: dialogHeight / 1.2,
                child: bodyWidget),
          ],
          dialogHeight: dialogHeight,
          dialogWidth: dialogWidth,
        );
      case StateRendererType.FULL_SCREEN_LOADING_STATE:
        return ItemInColumn(children: [
          const AnimatedImage(animationName: AppAssetNames.loading),
          StateMessage(message: message),
        ]);
      case StateRendererType.FULL_SCREEN_ERROR_STATE:
        return ItemInColumn(children: [
          const AnimatedImage(animationName: AppAssetNames.error),
          StateMessage(message: message),
          RetryButton(
            buttonTitle: AppStrings.retry,
            retryAction: () {},
          )
        ]);
      case StateRendererType.FULL_SCREEN_FORM_STATE:
        return bodyWidget ?? Container();
      case StateRendererType.CONTENT_SCREEN_STATE:
        return Container();
      case StateRendererType.EMPTY_SCREEN_STATE:
        return const ItemInColumn(
            children: [AnimatedImage(animationName: AppAssetNames.lost)]);
      default:
        return PopUpDialog(
          children: [AnimatedImage(animationName: AppAssetNames.lost)],
          dialogHeight: dialogHeight,
          dialogWidth: dialogWidth,
        );
    }
  }
}

class StateMessage extends StatelessWidget {
  final String message;
  const StateMessage({required this.message, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(AppSize.s18),
      child: FittedBox(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Theme.of(context).backgroundColor),
        ),
      ),
    ));
  }
}

class ItemInColumn extends StatelessWidget {
  final List<Widget> children;
  const ItemInColumn({required this.children, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    ));
  }
}
