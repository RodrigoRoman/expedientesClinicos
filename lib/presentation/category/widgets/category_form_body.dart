import 'dart:io';

import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CategoryFormBody extends StatefulWidget {
  final CategoryFormState state;
  const CategoryFormBody({required this.state, super.key});

  @override
  State<CategoryFormBody> createState() => _CategoryFormBodyState();
}

class _CategoryFormBodyState extends State<CategoryFormBody> {
  final _key = GlobalKey<FormState>();
  final TextEditingController categoryNameController = TextEditingController();

  Future pickImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 500,
      maxWidth: 500,
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
      maxHeight: 500,
      maxWidth: 500,
    );
    if (image == null) {
      return '';
    } else {
      return image.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 6,
                          child: LayoutBuilder(builder: (context, constraints) {
                            return ClipOval(
                                child: widget.state.category.imageUrl.value
                                    .fold(
                                        (l) => Container(
                                              width: constraints.maxWidth,
                                              height: constraints.maxWidth,
                                              padding: const EdgeInsets.all(15),
                                              decoration: const BoxDecoration(
                                                color: Colors.white24,
                                                shape: BoxShape.circle,
                                              ),
                                              child: FittedBox(
                                                  child: Icon(
                                                Icons.category,
                                                color: Theme.of(context)
                                                    .backgroundColor,
                                              )),
                                            ),
                                        (filePath) => Container(
                                            width: constraints.maxWidth,
                                            height: constraints.maxWidth,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: FileImage(
                                                        File(filePath)))))));
                          }),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                const Spacer(),
                                Expanded(
                                  flex: 4,
                                  child: LayoutBuilder(
                                    builder: (context, buttonConstraints) {
                                      return ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              fixedSize: Size(
                                                  buttonConstraints.maxWidth /
                                                      4,
                                                  buttonConstraints.maxHeight /
                                                      4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              padding: const EdgeInsets.all(2)),
                                          child: Icon(
                                            Icons.image,
                                            size: (buttonConstraints.maxHeight +
                                                    buttonConstraints
                                                        .maxWidth) *
                                                0.4,
                                          ),
                                          onPressed: () async {
                                            final String img =
                                                await pickImage();
                                            if (!mounted) return;
                                            context
                                                .read<CategoryFormBloc>()
                                                .add(CategoryFormEvent
                                                    .imageUrlChanged(img));
                                          });
                                    },
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  flex: 4,
                                  child: LayoutBuilder(
                                    builder: (context, buttonConstraints) {
                                      return ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              fixedSize: Size(
                                                  buttonConstraints.maxWidth /
                                                      4,
                                                  buttonConstraints.maxHeight /
                                                      4),
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(2)),
                                          child: Icon(
                                            Icons.camera,
                                            size: (buttonConstraints.maxHeight +
                                                    buttonConstraints
                                                        .maxWidth) *
                                                0.4,
                                          ),
                                          onPressed: () {
                                            // widget.newFunction();
                                          });
                                    },
                                  ),
                                ),
                                const Spacer()
                              ],
                            ))
                      ],
                    )),
                const Spacer(),
                Expanded(
                    flex: 3,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                          width: constraints.maxWidth / 1.5,
                          height: constraints.maxHeight,
                          child: TextFormField(
                            controller: categoryNameController,
                            validator: (_) => context
                                .read<CategoryFormBloc>()
                                .state
                                .category
                                .name
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        exceedingLength: (value) =>
                                            AppStrings.tooLong,
                                        empty: (value) => AppStrings.isEmpty,
                                        orElse: () => AppStrings.empty),
                                    (_) => null),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).canvasColor),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.categoryName,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Theme.of(context).canvasColor)),
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              categoryNameController.text = value;
                              categoryNameController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset:
                                          categoryNameController.text.length));
                              context.read<CategoryFormBloc>().add(
                                  CategoryFormEvent.nameChanged(
                                      categoryNameController.text));
                            },
                            textInputAction: TextInputAction.next,
                          ));
                    })),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        context
                            .read<CategoryFormBloc>()
                            .add(const CategoryFormEvent.saved());
                      }
                    },
                    child: const Text(AppStrings.create))
              ]),
        ),
      );
    });
  }
}
