import 'dart:io';

import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/text_input_field.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CategoryForm extends StatefulWidget {
  final Category category;
  final Function onNameChanged;
  final Function onImageChanged;
  final Function onSubmit;
  final Function validName;
  CategoryForm(
      {required this.category,
      required this.onNameChanged,
      required this.onImageChanged,
      required this.onSubmit,
      required this.validName,
      super.key});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
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

  bool requestedSubmition = false;
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
                    flex: 6,
                    child: ImagePickerDisplay(
                      imageUrl: widget.category.imageUrl,
                      onImageUrlChanged: widget.onImageChanged,
                      mounted: mounted,
                      validated: !requestedSubmition &&
                          categoryNameController.text.isEmpty,
                    )),
                // const Spacer(),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s10),
                    child: TextInputTitle(
                      title: AppStrings.categoryName,
                      textEditingController: categoryNameController,
                      onChanged: (value) {
                        categoryNameController.text = value;
                        categoryNameController.selection =
                            TextSelection.fromPosition(TextPosition(
                                offset: categoryNameController.text.length));
                        widget.onNameChanged(categoryNameController.text);
                      },
                      validator: widget.validName,
                      hintText: AppStrings.categoryName,
                      submitted: requestedSubmition,
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                    flex: 3,
                    child: CancelCreateButtonsRow(
                      onCreate: () {
                        if (!categoryNameController.text.isEmpty) {
                          widget.onSubmit();
                        }
                        setState(() {
                          requestedSubmition = true;
                        });
                      },
                    )),
              ]),
        ),
      );
    });
  }
}
