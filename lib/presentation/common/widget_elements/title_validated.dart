import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class TitleValidated extends StatelessWidget {
  final String title;
  final bool condition;
  final String? errorText;

  const TitleValidated(
      {super.key,
      required this.title,
      required this.condition,
      this.errorText = AppStrings.isEmpty});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextTheme =
        Theme.of(context).textTheme.displaySmall ?? const TextStyle();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 4,
          child: AutoSizeText(
            title,
            wrapWords: false,
            maxLines: 1,
            style: titleTextTheme.copyWith(
                color: !condition
                    ? Theme.of(context).colorScheme.error
                    : titleTextTheme.color),
          ),
        ),
        !condition
            ? Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        errorText ?? AppStrings.isEmpty,
                        wrapWords: false,
                        minFontSize: 8,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.error),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              )
            : Spacer(flex: 2)
      ],
    );
  }
}
