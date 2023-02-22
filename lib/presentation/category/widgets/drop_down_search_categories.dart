import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchCategories extends StatefulWidget {
  final TextEditingController textController;
  final List<Category> listElements;
  final String hintText;
  final Function newFunction;

  const DropdownSearchCategories(
      {super.key,
      required this.textController,
      required this.listElements,
      required this.hintText,
      required this.newFunction});
  @override
  _DropdownSearchCategoriesState createState() =>
      _DropdownSearchCategoriesState();
}

class _DropdownSearchCategoriesState extends State<DropdownSearchCategories> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry;
  GlobalKey globalKey = GlobalKey();
  final LayerLink _layerLink = LayerLink();
  List<Category> categoriesList = [];

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
        overlayState!.insert(_overlayEntry!);
      } else {
        if (_overlayEntry != null) {
          _overlayEntry!.remove();
          _overlayEntry = null;
        }
      }
    });
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
      overlayState!.insert(_overlayEntry!);
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
                          children: categoriesList.map(
                        (e) {
                          return Container(
                            margin: const EdgeInsets.all(AppSize.s2_5),
                            decoration: BoxDecoration(
                              color: (context
                                          .read<MedicineFormBloc>()
                                          .state
                                          .medicine
                                          .category ==
                                      e)
                                  ? Theme.of(context).colorScheme.secondary
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 2,
                              ),
                            ),
                            child: ListTile(
                              selected: context
                                      .read<MedicineFormBloc>()
                                      .state
                                      .medicine
                                      .category ==
                                  e,
                              leading: e.imageUrl.value.fold(
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
                              title: FittedBox(
                                child: Text(e.name.value
                                    .fold((l) => AppStrings.isEmpty, (r) => r)),
                              ),
                              onTap: () {
                                context
                                    .read<MedicineFormBloc>()
                                    .add(MedicineFormEvent.categoryChanged(e));
                                widget.textController.text = e.name.value
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
    return BlocListener<CategoryWatcherBloc, CategoryWatcherState>(
        listener: (context, state) {
      state.map(
          initial: (value) {
            categoriesList = [];
          },
          loadInProgress: ((value) => context.read<StateRendererBloc>().add(
              StateRendererEvent.popUpLoading(AppStrings.saving,
                  AppStrings.actionInProgressExplain, null, 300, 500))),
          loadSuccess: ((value) {
            categoriesList = value.categories.asList();
            rebuildOverlay();
          }),
          loadFailure: ((value) => context.read<StateRendererBloc>().add(
              StateRendererEvent.popUpError(AppStrings.unableToReadError,
                  AppStrings.unableToReadErrorExplain, null, 300, 500))));
    }, child: LayoutBuilder(
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
                child: BlocConsumer<MedicineFormBloc, MedicineFormState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    Category selectedCategory = state.medicine.category;
                    return ((state.medicine.category != Category.empty()) &
                            !_focusNode.hasFocus)
                        ? ListTile(
                            onTap: () {
                              FocusScope.of(context).requestFocus(_focusNode);
                            },
                            title: selectedCategory.imageUrl.value.fold(
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
                            trailing: Text(
                                selectedCategory.name.value
                                    .fold((l) => AppStrings.isEmpty, (r) => r),
                                style: Theme.of(context).textTheme.labelMedium),
                          )
                        : TextFormField(
                            controller: widget.textController,
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
                              widget.textController.text = value;
                              widget.textController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset:
                                          widget.textController.text.length));
                              if (value.isEmpty) {
                                context.read<CategoryWatcherBloc>().add(
                                    const CategoryWatcherEvent
                                        .watchAllStarted());
                              } else {
                                context.read<CategoryWatcherBloc>().add(
                                    CategoryWatcherEvent.watchFilteredStarted(
                                        widget.textController.text));
                              }
                            },
                          );
                  },
                ),
              ),
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
    ));
  }
}
