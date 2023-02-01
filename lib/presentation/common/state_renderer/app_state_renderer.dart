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
  final StateRendererType stateRendererType;
  const StateRenderer(
      {required this.stateRendererType,
      String? message,
      String? title,
      Widget? bodyWidget,
      required this.retryActionFunction,
      Key? key})
      : message = message ?? AppStrings.loading,
        title = title ?? AppStrings.empty,
        bodyWidget = bodyWidget ?? const SizedBox(),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return StateAppWidget(
        stateRendererType: stateRendererType,
        title: title,
        bodyWidget: bodyWidget,
        message: message,
        retryActionFunction: retryActionFunction);
  }
}

class StateAppWidget extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String message;
  final String? title;
  final Widget? bodyWidget;
  final Function retryActionFunction;
  const StateAppWidget(
      {required this.stateRendererType,
      required this.title,
      required this.bodyWidget,
      required this.retryActionFunction,
      message,
      Key? key})
      : message = message ?? AppStrings.empty,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    switch (stateRendererType) {
      case StateRendererType.POPUP_LOADING_STATE:
        return const PopUpDialog(
            children: [AnimatedImage(animationName: AppAssetNames.loading)]);
      case StateRendererType.POPUP_ERROR_STATE:
        return PopUpDialog(children: [
          const AnimatedImage(animationName: AppAssetNames.error),
          StateMessage(message: message),
          RetryButton(
            buttonTitle: AppStrings.ok,
            retryAction: retryActionFunction,
          )
        ]);
      case StateRendererType.POPUP_SERVER_ERROR_STATE:
        return PopUpDialog(children: [
          const AnimatedImage(animationName: AppAssetNames.lost),
          StateMessage(message: message),
          RetryButton(
            buttonTitle: AppStrings.ok,
            retryAction: retryActionFunction,
          )
        ]);
      case StateRendererType.POPUP_SUCCESS:
        return PopUpDialog(children: [
          const AnimatedImage(animationName: AppAssetNames.success),
          StateMessage(message: message),
          RetryButton(
            buttonTitle: AppStrings.ok,
            retryAction: retryActionFunction,
          )
        ]);
      case StateRendererType.POPUP_FORM:
        return PopUpDialog(children: [
          FittedBox(
            child: Text(
              title ?? '',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Theme.of(context).colorScheme.background),
            ),
          ),
          SizedBox(
              width: size.width / 1.2,
              height: size.height / 2.2,
              child: bodyWidget),
        ]);
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
      case StateRendererType.CONTENT_SCREEN_STATE:
        return Container();
      case StateRendererType.EMPTY_SCREEN_STATE:
        return const ItemInColumn(
            children: [AnimatedImage(animationName: AppAssetNames.lost)]);
      default:
        return const PopUpDialog(
            children: [AnimatedImage(animationName: AppAssetNames.lost)]);
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
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(color: Theme.of(context).backgroundColor),
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
