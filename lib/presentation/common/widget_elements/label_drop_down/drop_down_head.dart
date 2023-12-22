import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/text_input_field.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/card_item_drop_down.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';

import 'package:flutter/material.dart';

class DropDownSearchHead extends StatefulWidget {
  TextEditingController searchFieldController;
  List<DropdownItemViewModel> listElements;
  // Given that our validation is applied in a title that is unrelated
  // to the controller need to have a parameter for this. If true
  // would meand that the form is invalid
  bool valid;
  Function onSearchAll;
  Function onSearchWithKey;
  Function newFunction;
  Function onSelected;
  String hintText;
  DropdownItemViewModel element;
  DropDownSearchHead(
      {super.key,
      required this.searchFieldController,
      required this.onSearchWithKey,
      required this.onSearchAll,
      required this.newFunction,
      required this.hintText,
      required this.onSelected,
      required this.element,
      this.valid = false,
      required this.listElements});

  @override
  State<DropDownSearchHead> createState() => _DropDownSearchHeadState();
}

class _DropDownSearchHeadState extends State<DropDownSearchHead> {
  final FocusNode _focusNode = FocusNode();

  OverlayEntry? _overlayEntry;

  GlobalKey globalKey = GlobalKey();

  List<DropdownItemViewModel> _oldListElements = [];

  final LayerLink _layerLink = LayerLink();

  // List<Category> widget.list = [];
  @override
  void initState() {
    super.initState();
    OverlayState? overlayState = Overlay.of(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      globalKey;
    });
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _createOverlay();
        overlayState.insert(_overlayEntry!);
      } else {
        if (_overlayEntry != null) {
          _overlayEntry!.remove();
          _overlayEntry = null;
        }
      }
    });
  }

  @override
  void didUpdateWidget(DropDownSearchHead oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.listElements != _oldListElements) {
      // do something because the listElements prop has changed
      _oldListElements = widget.listElements;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        rebuildOverlay();
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
    }
    _overlayEntry = null;
    super.dispose();
  }

  void rebuildOverlay() {
    OverlayState? overlayState = Overlay.of(context);
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }

    if (_focusNode.hasFocus) {
      print("has focus!");
      _overlayEntry = _createOverlay();
      overlayState.insert(_overlayEntry!);
    } else {
      if (_overlayEntry != null) {
        _overlayEntry!.remove();
        _overlayEntry = null;
      }
    }
  }

  OverlayEntry _createOverlay() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    return OverlayEntry(
        builder: (contextDialog) => Positioned(
              height: size.height *
                  ((widget.listElements.length < 2)
                      ? (widget.listElements.length * 1.8)
                      : 3),
              width: size.width / 1,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height / 1.6),
                child: Material(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 8.0,
                  child: SizedBox(
                    height: size.height * 2,
                    width: size.width / 1.5,
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: widget.listElements.map(
                            (e) {
                              return SizedBox(
                                height: CardItemHeight.s,
                                child: CardViewIItem(
                                  cardData: e,
                                  context: context,
                                  dataTarget: widget.element,
                                  focusNode: _focusNode,
                                  onSelected: (data) {
                                    widget.onSelected(data);
                                    widget.searchFieldController.text =
                                        e.title.value.fold(
                                            (l) => AppStrings.isEmpty,
                                            (r) => r);
                                    _focusNode.unfocus();
                                  },
                                ),
                              );
                            },
                          ).toList()),
                    ),
                  ),
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          child: Material(
            elevation: 3,
            borderRadius: BoderRadiusStyle.allRound,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        margin: const EdgeInsets.all(AppSize.s2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 12,
                              child: TitleValidated(
                                  title: widget.hintText,
                                  condition: widget.valid),
                            ),
                            Expanded(
                              flex: 2,
                              child: PlusButton(onPressed: widget.newFunction),
                            ),
                          ],
                        ))),
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 9,
                                child: CompositedTransformTarget(
                                    link: _layerLink,
                                    child: ((widget.element.title !=
                                                FullName(EmptyFormValues
                                                    .emptyString)) &
                                            !_focusNode.hasFocus)
                                        ? CardViewIItem(
                                            cardData: widget.element,
                                            context: context,
                                            dataTarget: null,
                                            focusNode: _focusNode,
                                            onSelected: (data) {
                                              FocusScope.of(context)
                                                  .requestFocus(_focusNode);
                                              if (widget.searchFieldController
                                                  .text.isEmpty) {
                                                widget.onSearchAll();
                                              } else {
                                                widget.onSearchWithKey(widget
                                                    .searchFieldController
                                                    .text);
                                              }
                                            })
                                        : TextInputField(
                                            focusNode: _focusNode,
                                            onCancel: widget.onSearchAll,
                                            onChange: (value) {
                                              if (value.isEmpty) {
                                                widget.onSearchAll();
                                              } else {
                                                widget.onSearchWithKey(widget
                                                    .searchFieldController
                                                    .text);
                                              }
                                            },
                                            hintText: widget.hintText,
                                            textFieldController:
                                                widget.searchFieldController,
                                          )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
