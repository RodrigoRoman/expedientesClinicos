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

/* 
  Similar to DropDownSearchHead but for fixed values given by the app. 
  The purpose is to give the logic for searching within these values 
  just by providing the list of elements
*/

class DropDownFixedValues extends StatefulWidget {
  TextEditingController searchFieldController;
  List<DropdownItemViewModel> listElements;
  // Given that our validation is applied in a title that is unrelated
  // to the controller need to have a parameter for this. If true
  // would mean that the form is valid
  bool valid;
  // Even though the logic of select is given within this widget,
  // If you want yo perform any other action you can use onSelected
  Function(DropdownItemViewModel)? onSelected;
  String hintText;
  DropdownItemViewModel element;
  DropDownFixedValues(
      {super.key,
      required this.searchFieldController,
      required this.hintText,
      this.onSelected,
      required this.element,
      this.valid = true,
      required this.listElements});

  @override
  State<DropDownFixedValues> createState() => _DropDownFixedValuesState();
}

class _DropDownFixedValuesState extends State<DropDownFixedValues> {
  final FocusNode _focusNode = FocusNode();

  OverlayEntry? _overlayEntry;

  GlobalKey globalKey = GlobalKey();

  List<DropdownItemViewModel> _oldListElements = [];
  List<DropdownItemViewModel> _filteredListElements =
      []; // New variable to hold the filtered list

  DropdownItemViewModel _selectedItem = DropdownItemViewModel.empty();

  final LayerLink _layerLink = LayerLink();

  // List<Category> widget.list = [];
  @override
  void initState() {
    super.initState();
    print("Inside INit!");
    OverlayState? overlayState = Overlay.of(context);

    // Initialize the filtered list with the original list
    _filteredListElements = List.from(widget.listElements);

    // Initialize the selected item
    _selectedItem = widget.element;

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
  void didUpdateWidget(DropDownFixedValues oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_filteredListElements != _oldListElements) {
      // do something because the listElements prop has changed
      _oldListElements = _filteredListElements;
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
                  ((_filteredListElements.length < 2)
                      ? (_filteredListElements.length * 1.8)
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
                          children: _filteredListElements.map(
                            (e) {
                              return SizedBox(
                                height: CardItemHeight.s,
                                child: CardViewIItem(
                                  cardData: e,
                                  context: context,
                                  dataTarget: _selectedItem,
                                  focusNode: _focusNode,
                                  onSelected: (data) {
                                    widget.searchFieldController.text =
                                        e.title.value.fold(
                                            (l) => AppStrings.isEmpty,
                                            (r) => r);
                                    if (widget.onSelected != null) {
                                      widget.onSelected!(data);
                                    }
                                    print("Data inside");
                                    print(data);
                                    _selectedItem = data;
                                    _focusNode.unfocus();

                                    setState(() {});
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
    print("selected item!");
    print(_selectedItem);
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
                    flex: 3,
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
                                    child: ((_selectedItem.title !=
                                                FullName(EmptyFormValues
                                                    .emptyString)) &
                                            !_focusNode.hasFocus)
                                        ? CardViewIItem(
                                            cardData: _selectedItem,
                                            context: context,
                                            dataTarget: null,
                                            focusNode: _focusNode,
                                            onSelected: (data) {
                                              FocusScope.of(context)
                                                  .requestFocus(_focusNode);
                                              if (widget.searchFieldController
                                                  .text.isEmpty) {
                                                _filteredListElements =
                                                    onSearchWithKey(
                                                        widget.listElements,
                                                        AppStrings.empty);
                                              } else {
                                                _filteredListElements =
                                                    onSearchWithKey(
                                                        widget.listElements,
                                                        widget
                                                            .searchFieldController
                                                            .text);
                                              }
                                            })
                                        : TextInputField(
                                            focusNode: _focusNode,
                                            onCancel: () {
                                              _filteredListElements =
                                                  onSearchWithKey(
                                                      widget.listElements,
                                                      AppStrings.empty);
                                            },
                                            onChange: (value) {
                                              if (value.isEmpty) {
                                                _filteredListElements =
                                                    onSearchWithKey(
                                                        widget.listElements,
                                                        AppStrings.empty);
                                              } else {
                                                _filteredListElements =
                                                    onSearchWithKey(
                                                        widget.listElements,
                                                        widget
                                                            .searchFieldController
                                                            .text);
                                              }
                                              setState(() {
                                                rebuildOverlay();
                                              });
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

/*
  Search function for finding the elments that match the inputKeys entered
  by the user
 */
List<DropdownItemViewModel> onSearchWithKey(
    List<DropdownItemViewModel> listItems, String inputKeys) {
  // Create a RegExp object with the input string
  RegExp regExp = RegExp(inputKeys, caseSensitive: false);

  // Use the where method to filter the elements that match the regex
  List<DropdownItemViewModel> filteredElements = listItems.where((element) {
    return regExp.hasMatch(element.title.getOrCrash());
  }).toList();

  return filteredElements;
}
