import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDisplay extends StatelessWidget {
  final bool validated;
  final Function onImageUrlChanged;
  final ImageURL imageUrl;
  bool inactive;
  final bool mounted;
  ImagePickerDisplay({
    super.key,
    required this.imageUrl,
    required this.onImageUrlChanged,
    this.validated = true,
    this.inactive = false,
    required this.mounted,
  });

  double get minWidth => 50;
  double get minHeight => 50;

  Future pickImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 700,
      maxWidth: 700,
    );
    if (image == null) {
      return '';
    } else {
      return image.path;
    }
  }

  Future takeImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 700,
      maxWidth: 700,
    );
    if (image == null) {
      return '';
    } else {
      return image.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraintStack) {
      double diplayHeight = constraintStack.maxHeight / 1.2;
      double diplayWidth = constraintStack.maxWidth / 1.4;
      double averageRectSize = (diplayWidth + diplayHeight) / 2;
      return Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: Material(
            color: Colors.white60,
            elevation: inactive ? 1 : 10,
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s24)),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  //if the user passes to the comercialName field without filling the image part
                  //then we want to notify to them with red border.
                  border: (validated)
                      ? null
                      : imageUrl.value.fold(
                          (l) => Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 4,
                              ),
                          (r) => null),
                  borderRadius: BoderRadiusStyle.allCircular),
              child: (imageUrl.value.fold(
                  (l) => GestureDetector(
                        onTap: inactive
                            ? null
                            : () async {
                                final String img = await pickImage();
                                if (!mounted) return;
                                onImageUrlChanged(img);
                              },
                        child: const AnimatedImage(
                          animationName: AppAssetNames.imagePlaceholder,
                        ),
                      ),
                  (r) => Stack(
                        children: [
                          Positioned(
                            height: diplayHeight,
                            width: diplayWidth,
                            child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BoderRadiusStyle.allCircular,
                                child: Image.asset(r, fit: BoxFit.cover)),
                          ),
                          Positioned(
                            top: -diplayHeight / 7,
                            left: -diplayWidth / 5,
                            width: diplayWidth / 1.5,
                            height: diplayHeight / 1.5,
                            child: GestureDetector(
                              onTap: inactive
                                  ? null
                                  : () {
                                      onImageUrlChanged('');
                                    },
                              child: const AnimatedImage(
                                animationName: AppAssetNames.imagePlaceholder,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
          ),
        ),
      );
    });
  }
}
