import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_image_view_model.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    _overlayEntry!.remove();
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
              width: size.width / 1.6,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height),
                child: Material(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 8.0,
                  child: SizedBox(
                    height: size.height * 3,
                    child: SingleChildScrollView(
                      child: Column(
                          children: widget.listElements.map(
                        (e) {
                          return Container(
                            margin: const EdgeInsets.all(AppSize.s2_5),
                            decoration: BoxDecoration(
                              color: (widget.element == e)
                                  ? Theme.of(context).colorScheme.secondary
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 2,
                              ),
                            ),
                            child: ListTile(
                              selected: widget.element == e,
                              leading: e.imageURL.value.fold(
                                ((r) => const Icon(Icons.abc)),
                                (r) => Container(
                                  margin: const EdgeInsets.all(AppSize.s2),
                                  width: size.width / 5,
                                  height: size.width / 5,
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
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      child: Text(e.title.value.fold(
                                          (l) => AppStrings.isEmpty, (r) => r)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      child: Text(e.subtitle.value.fold(
                                          (l) => AppStrings.isEmpty, (r) => r)),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                widget.onSelected(e);
                                widget.searchFieldController.text = e
                                    .title.value
                                    .fold((l) => AppStrings.isEmpty, (r) => r);
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
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Expanded(
              flex: 9,
              child: CompositedTransformTarget(
                  link: _layerLink,
                  child: ((widget.element !=
                              TitleSubtitleImageViewModel.empty()) &
                          !_focusNode.hasFocus)
                      ? ListTile(
                          onTap: () {
                            FocusScope.of(context).requestFocus(_focusNode);
                          },
                          title: widget.element.imageURL.value.fold(
                            ((r) => const Icon(Icons.abc)),
                            (r) => Container(
                              margin: const EdgeInsets.all(AppSize.s0),
                              width: constraints.maxWidth / 8,
                              height: constraints.maxWidth / 8,
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
                          trailing: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: FittedBox(
                                  child: Text(widget.element.title.value.fold(
                                      (l) => AppStrings.isEmpty, (r) => r)),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: FittedBox(
                                  child: Text(widget.element.subtitle.value
                                      .fold(
                                          (l) => AppStrings.isEmpty, (r) => r)),
                                ),
                              ),
                            ],
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
                          ),
                          focusNode: _focusNode,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            widget.searchFieldController.text = value;
                            widget.searchFieldController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: widget
                                        .searchFieldController.text.length));
                            if (value.isEmpty) {
                              widget.onSearchAll();
                              // context.read<MedicineCategoryWatcherBloc>().add(
                              //     const CategoryWatcherEvent
                              //         .watchAllStarted());
                            } else {
                              widget.onSearchWithKey(
                                  widget.searchFieldController.text);
                              // context.read<MedicineCategoryWatcherBloc>().add(
                              //     CategoryWatcherEvent.watchFilteredStarted(
                              //         widget.searchFieldController.text));
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
        );
      },
    );
    // );
  }
}
