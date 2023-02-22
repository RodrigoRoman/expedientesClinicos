import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class TitleValidated extends StatelessWidget {
  const TitleValidated({
    super.key,
    required this.title,
    required this.condition,
  });
  final String title;
  final bool condition;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: condition
                    ? Theme.of(context).colorScheme.error
                    : Colors.black),
          ),
        ),
        condition
            ? Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Text(AppStrings.isEmpty,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.error)),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
