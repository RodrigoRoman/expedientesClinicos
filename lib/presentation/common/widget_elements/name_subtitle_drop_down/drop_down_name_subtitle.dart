import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_img_view_model.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//The are saved or this widget must not be greater that the space needed for the dropdown
//Otherwise the list of overlays does not display well
class DropdownSearchTitleSubtitleImg extends StatefulWidget {
  final TextEditingController searchFieldController;
  final List<TitleSubtitleImageViewModel> listElements;
  final String hintText;
  final Function newFunction;
  final Function onSelected;
  final Function onSearchWithKey;
  final Function onSearchAll;
  final TitleSubtitleImageViewModel element;

  const DropdownSearchTitleSubtitleImg(
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
  _DropdownSearchTitleSubtitleImgState createState() =>
      _DropdownSearchTitleSubtitleImgState();
}

class _DropdownSearchTitleSubtitleImgState
    extends State<DropdownSearchTitleSubtitleImg> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry;
  GlobalKey globalKey = GlobalKey();
  List<TitleSubtitleImageViewModel> _oldListElements = [];

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
  void didUpdateWidget(DropdownSearchTitleSubtitleImg oldWidget) {
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
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    return OverlayEntry(
        builder: (contextDialog) => Positioned(
              height: size.height *
                  ((widget.listElements.length < 2)
                      ? (widget.listElements.length * 1.1)
                      : 3),
              width: size.width / 1.2,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                // offset: Offset(0.0, size.height / 1.5),
                offset: Offset(0.0, size.height / 1.5),

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
                                height: size.height,
                                padding: const EdgeInsets.all(AppSize.s10),
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
                                child: Center(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: false,
                                    selected: widget.element == e,
                                    leading: e.imageURL.value.fold(
                                      (l) => null,
                                      (r) => Container(
                                        // margin: const EdgeInsets.all(AppSize.s2),
                                        width: size.width / 5,
                                        height: (size.height * 1.5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              r,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    title: Column(
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Spacer(),
                                        Expanded(
                                          flex: 5,
                                          child: SingleChildScrollView(
                                            // direction: Axis.vertical,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            child: Text(
                                                e.title.value.fold(
                                                    (l) => AppStrings.isEmpty,
                                                    (r) => r),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge!
                                                    .copyWith(
                                                        fontSize: AppSize.s18),
                                                textAlign: TextAlign.center,
                                                maxLines: 4,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                        ),
                                        Spacer(),
                                        Expanded(
                                          flex: 2,
                                          child: SingleChildScrollView(
                                            // direction: Axis.vertical,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            child: Text(
                                                e.subtitle.value.fold(
                                                    (l) => AppStrings.isEmpty,
                                                    (r) => r),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge!
                                                    .copyWith(
                                                        fontSize: AppSize.s12),
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    onTap: () {
                                      widget.onSelected(e);
                                      _focusNode.unfocus();
                                    },
                                  ),
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
                        child: ((widget.element.title !=
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
                                  child: Center(
                                    child: ListTile(
                                      leading:
                                          widget.element.imageURL.value.fold(
                                        (l) => SizedBox(
                                          width: AppSize.s4,
                                        ),
                                        (r) => Container(
                                          width: (constraints.maxWidth * 1) / 6,
                                          height: constraints.maxHeight,
                                          margin:
                                              const EdgeInsets.all(AppSize.s0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                r,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      title: SizedBox(
                                        width: (constraints.maxWidth * 5) / 6,
                                        child: FittedBox(
                                          child: Text(widget.element.title.value
                                              .fold((l) => AppStrings.isEmpty,
                                                  (r) => r)),
                                        ),
                                      ),
                                      subtitle: SizedBox(
                                        width: (constraints.maxWidth * 5) / 6,
                                        child: FittedBox(
                                          child: Text(widget
                                              .element.subtitle.value
                                              .fold((l) => AppStrings.isEmpty,
                                                  (r) => r)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : TextFormField(
                                controller: widget.searchFieldController,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  icon: const Icon(Icons.search_rounded,
                                      size: FontSize.s18),
                                  border: InputBorder.none,
                                  hintText: widget.hintText,
                                  suffix: (widget.searchFieldController.text !=
                                          '')
                                      ? IconButton(
                                          icon: Icon(Icons.cancel),
                                          iconSize: AppSize.s20,
                                          onPressed: () {
                                            widget.searchFieldController.text =
                                                '';
                                            widget.onSearchAll();
                                          },
                                        )
                                      : SizedBox.shrink(),
                                ),
                                focusNode: _focusNode,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                onChanged: (value) {
                                  widget.searchFieldController.value =
                                      TextEditingValue(
                                    text: value,
                                    selection: TextSelection.fromPosition(
                                      TextPosition(
                                          offset: widget.searchFieldController
                                              .selection.extentOffset),
                                    ),
                                  );
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
