//Remove existing Dialog
import 'package:expedientes_clinicos/presentation/common/state_renderer/app_state_renderer.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class PopUpDialog extends StatelessWidget {
  final List<Widget> children;
  const PopUpDialog({required this.children, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s14)),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s14),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white24,
                  blurRadius: AppSize.s4,
                  spreadRadius: AppSize.s8,
                  offset: Offset(AppSize.s0, AppSize.s0))
            ]),
        child: DialogContent(children: children),
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  final List<Widget> children;
  const DialogContent({required this.children, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}

//Dialog Functions
dismissDialog(BuildContext context) {
  if (_isThereCurrentDialogShowing(context)) {
    Navigator.of(context, rootNavigator: true).pop(true);
  }
}

//Check if there is a Dialog
_isThereCurrentDialogShowing(BuildContext context) =>
    ModalRoute.of(context)?.isCurrent != true;

//Triger PopUp
Future showPopUp(BuildContext context, StateRendererType stateRendererType,
    Function retryActionFunction, String message, Widget? bodyWidget,
    {String title = AppStrings.empty}) async {
  // WidgetsBinding.instance.addPostFrameCallback((_) async =>
  return await showDialog(
    context: context,
    builder: (BuildContext context) => StateRenderer(
        stateRendererType: stateRendererType,
        message: message,
        title: title,
        bodyWidget: bodyWidget,
        retryActionFunction: retryActionFunction),
  );
  // );
}
