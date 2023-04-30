import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

//The are saved or this widget must not be greater that the space needed for the dropdown
//Otherwise the list of overlays does not display well
class DropdownSearchLabel extends StatefulWidget {
  final TextEditingController searchFieldController;
  final List<LabelDoseTimesViewModel> listElements;
  final String hintText;
  final Function newFunction;
  final Function onSelected;
  final Function onSearchWithKey;
  final Function onSearchAll;
  final LabelDoseTimesViewModel element;

  const DropdownSearchLabel(
      {super.key,
      required this.element,
      required this.searchFieldController,
      required this.onSelected,
      required this.onSearchWithKey,
      required this.onSearchAll,
      required this.listElements,
      required this.hintText,
      required this.newFunction});
  @override
  _DropdownSearchLabelState createState() => _DropdownSearchLabelState();
}

class _DropdownSearchLabelState extends State<DropdownSearchLabel> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry;
  GlobalKey globalKey = GlobalKey();
  List<LabelDoseTimesViewModel> _oldListElements = [];

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
  void didUpdateWidget(DropdownSearchLabel oldWidget) {
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
    print('overlay called');
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    return OverlayEntry(
        builder: (contextDialog) => Positioned(
              height: size.height *
                  ((widget.listElements.length < 2)
                      ? (widget.listElements.length * 1.8)
                      : 3),
              width: size.width / 1.2,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height / 1),
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
                              return Container(
                                width: size.width,
                                height: size.height * 1.5,
                                margin: const EdgeInsets.all(AppSize.s4),
                                decoration: BoxDecoration(
                                  color: (widget.element == e)
                                      ? Theme.of(context).colorScheme.secondary
                                      : Colors.white70,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  isThreeLine: false,
                                  selected: widget.element == e,
                                  title: Column(
                                    // mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: FittedBox(
                                          child: Text(e.label.value.fold(
                                              (l) => AppStrings.isEmpty,
                                              (r) => r)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    widget.onSelected(e);
                                    widget.searchFieldController.text =
                                        e.label.value.fold(
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
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // const Spacer(),
                  Expanded(
                    flex: 9,
                    child: CompositedTransformTarget(
                        link: _layerLink,
                        child: ((widget.element.label !=
                                    FullName(EmptyFormValues.emptyString)) &
                                !_focusNode.hasFocus)
                            ? GestureDetector(
                                onTap: () {
                                  FocusScope.of(context)
                                      .requestFocus(_focusNode);
                                  if (widget
                                      .searchFieldController.text.isEmpty) {
                                    widget.onSearchAll();
                                  } else {
                                    widget.onSearchWithKey(
                                        widget.searchFieldController.text);
                                  }
                                },
                                child: SizedBox(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                  child: ListTile(
                                    isThreeLine: false,
                                    title: SizedBox(
                                      width: (constraints.maxWidth * 5) / 6,
                                      height: constraints.maxHeight / 4,
                                      child: Wrap(
                                        children: [
                                          Text(
                                            widget.element.label.value.fold(
                                                (l) => AppStrings.isEmpty,
                                                (r) => r),
                                            maxLines: 3,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(
                                                  fontSize: AppSize.s12,
                                                ),
                                            overflow: TextOverflow.fade,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : TextFormField(
                                controller: widget.searchFieldController,
                                textAlign: TextAlign.center,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                decoration: InputDecoration(
                                    suffix:
                                        (widget.searchFieldController.text !=
                                                '')
                                            ? Material(
                                                elevation: 3,
                                                shape: CircleBorder(),
                                                clipBehavior: Clip.hardEdge,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    widget.searchFieldController
                                                        .text = '';
                                                    widget.onSearchAll();
                                                  },
                                                  child: Icon(
                                                    Icons.cancel_rounded,
                                                    size: AppSize.s18,
                                                  ),
                                                ),
                                              )
                                            : SizedBox.shrink(),
                                    border: InputBorder.none,
                                    hintText: widget.hintText),
                                focusNode: _focusNode,
                                style: TextStyle(
                                  fontSize: AppSize.s12,
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                onChanged: (value) {
                                  widget.searchFieldController.value =
                                      TextEditingValue(
                                          text: value,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: widget
                                                    .searchFieldController
                                                    .selection
                                                    .extentOffset),
                                          ));
                                  if (value.isEmpty) {
                                    widget.onSearchAll();
                                  } else {
                                    widget.onSearchWithKey(
                                        widget.searchFieldController.text);
                                  }
                                },
                              )),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: LayoutBuilder(
                      builder: (context, buttonConstraints) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(buttonConstraints.maxWidth / 4,
                                    buttonConstraints.maxHeight / 4),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(2)),
                            child: Icon(
                              Icons.add_circle_outline,
                              size: (buttonConstraints.maxHeight +
                                      buttonConstraints.maxWidth) *
                                  0.13,
                            ),
                            onPressed: () {
                              widget.newFunction();
                            });
                      },
                    ),
                  ),
                  //FAKER BUTTON (TO BE COMMENTED)
                  // Expanded(
                  //   flex: 3,
                  //   child: LayoutBuilder(
                  //     builder: (context, buttonConstraints) {
                  //       return BlocProvider(
                  //         create: (context) => getIt<CategoryActorBloc>(),
                  //         child: BlocConsumer<CategoryActorBloc, CategoryActorState>(
                  //           listener: (context, state) {},
                  //           builder: (context, state) {
                  //             return ElevatedButton(
                  //                 style: ElevatedButton.styleFrom(
                  //                     fixedSize: Size(buttonConstraints.maxWidth / 4,
                  //                         buttonConstraints.maxHeight / 4),
                  //                     shape: const CircleBorder(),
                  //                     padding: const EdgeInsets.all(2)),
                  //                 child: Icon(
                  //                   Icons.all_inbox,
                  //                   size: (buttonConstraints.maxHeight +
                  //                           buttonConstraints.maxWidth) *
                  //                       0.13,
                  //                 ),
                  //                 onPressed: () {
                  //                   context
                  //                       .read<CategoryActorBloc>()
                  //                       .add(CategoryActorEvent.faker());
                  //                 });
                  //           },
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        );
      },
    );
    // );
  }
}
