import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final String buttonTitle;
  final Function retryAction;
  const RetryButton(
      {required this.buttonTitle, required this.retryAction, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s8),
        child: SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
              child: Text(buttonTitle), onPressed: () => retryAction()),
        ),
      ),
    );

    // return LayoutBuilder(
    //   builder: (context,constraints) {
    //     return Center(
    //       child: Padding(
    //         padding: const EdgeInsets.all(AppSize.s8),
    //         child: SizedBox(
    //           width: constraints.maxWidth/AppSizePercents.per75,
    //           height: constraints.maxHeight/AppSizePercents.per75,
    //           child: ElevatedButton(
    //             child: Text(buttonTitle),
    //             onPressed: ()=>print('buttonTitlePressed'),
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}

class SplashIconButton extends StatelessWidget {
  final Function act;
  final IconData icon;
  const SplashIconButton({required this.act, required this.icon, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => act(),
      icon: Icon(icon),
      splashRadius: AppSize.s14,
      color: ColorManager.grey,
      splashColor: ColorManager.white,
      // style: Theme.of(context).buttonTheme.
    );
  }
}
