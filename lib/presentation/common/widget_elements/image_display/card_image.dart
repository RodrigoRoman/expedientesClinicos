import 'dart:math';

import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final ImageURL imageURL;
  const CardImage({required this.imageURL, super.key});

  @override
  Widget build(BuildContext context) {
    print("the image url");
    print(imageURL);
    return LayoutBuilder(builder: (context, constraints) {
      double squareSide =
          min(constraints.maxHeight / 1.1, constraints.maxWidth / 1.1);
      return Container(
        padding: EdgeInsets.all(AppSize.s3),
        height: squareSide,
        width: squareSide,
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BoderRadiusStyle.cardImage,
          child: Image.network(
              imageURL.value
                  .fold((l) => AppAssetNames.imagePlaceholderIMG, (r) => r),
              fit: BoxFit.cover),
        ),
      );
    });
  }
}
