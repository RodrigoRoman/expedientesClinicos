import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDisplay extends StatelessWidget {
  const ImagePickerDisplay({
    super.key,
    required this.heightUnit,
    required this.width,
    required this.imageUrl,
    required this.onImageUrlChanged,
    required this.medicineComercialController,
    required this.mounted,
  });

  final double heightUnit;
  final double width;
  final Function onImageUrlChanged;
  final ImageURL imageUrl;

  final TextEditingController medicineComercialController;
  final bool mounted;

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
    return Material(
      color: Colors.transparent,
      elevation: 10,
      borderRadius: const BorderRadius.all(Radius.circular(AppSize.s24)),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: heightUnit * 4,
          width: width,
          margin: const EdgeInsets.all(AppSize.s2),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              //if the user passes to the comercialName field without filling the image part
              //then we want to notify to them with red border.
              border: (medicineComercialController.text.isEmpty)
                  ? null
                  : imageUrl.value.fold(
                      (l) => Border.all(
                            color: Theme.of(context).colorScheme.error,
                            width: 4,
                          ),
                      (r) => null),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s24))),
          child: (imageUrl.value.fold(
              (l) => GestureDetector(
                    onTap: () async {
                      final String img = await pickImage();
                      if (!mounted) return;
                      print('image url changed');
                      onImageUrlChanged(img);
                      // context
                      //     .read<MedicineFormBloc>()
                      //     .add(MedicineFormEvent.imageUrlChanged(img));
                    },
                    child: const AnimatedImage(
                      animationName: AppAssetNames.imagePlaceholder,
                    ),
                  ),
              (r) => LayoutBuilder(builder: (context, constraintStack) {
                    return Stack(
                      children: [
                        Positioned(
                          height: constraintStack.maxHeight,
                          width: constraintStack.maxWidth,
                          child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              // decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(AppSize.s24)),
                              // ),
                              child: Image.asset(r)),
                        ),
                        Positioned(
                          top: (constraintStack.maxHeight / 2) -
                              (constraintStack.maxWidth / 6),
                          left: (constraintStack.maxWidth / 2) -
                              (constraintStack.maxWidth / 6),
                          width: constraintStack.maxWidth / 3,
                          height: constraintStack.maxWidth / 3,
                          child: GestureDetector(
                            onTap: () {
                              onImageUrlChanged('');
                              // context.read<MedicineFormBloc>().add(
                              //     const MedicineFormEvent.imageUrlChanged(''));
                            },
                            child: const AnimatedImage(
                              animationName: AppAssetNames.imagePlaceholder,
                            ),
                          ),
                        ),
                      ],
                    );
                  })))),
    );
  }
}
