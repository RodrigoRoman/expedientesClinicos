import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchMeasureUnit extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final Function newFunction;
  const DropdownSearchMeasureUnit(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.newFunction});
  @override
  _DropdownSearchMeasureUnitState createState() =>
      _DropdownSearchMeasureUnitState();
}

class _DropdownSearchMeasureUnitState extends State<DropdownSearchMeasureUnit> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry;
  GlobalKey globalKey = GlobalKey();
  final LayerLink _layerLink = LayerLink();
  List<NameAbbreviation> measureUnitList = [];

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
        builder: (contextOverlay) => Positioned(
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
                          children: measureUnitList
                              .map(
                                (e) => Container(
                                  margin: const EdgeInsets.all(AppSize.s2_5),
                                  decoration: BoxDecoration(
                                    color:
                                        //  (context
                                        //             .read<IngredientCoreFormBloc>()
                                        //             .state
                                        //             .ingredientCore
                                        //             .measureUnit ==
                                        //         e)
                                        //     ? Theme.of(context)
                                        //         .colorScheme
                                        //         .secondary
                                        //     :
                                        Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: ListTile(
                                    selected: context
                                            .read<IngredientCoreFormBloc>()
                                            .state
                                            .ingredientCore
                                            .measureUnit ==
                                        e,
                                    leading: Text(e.abr.value.fold(
                                        (l) => AppStrings.isEmpty, (r) => r)),
                                    title: Text(e.name.value.fold(
                                        (l) => AppStrings.isEmpty, (r) => r)),
                                    onTap: () {
                                      context
                                          .read<IngredientCoreFormBloc>()
                                          .add(IngredientCoreFormEvent
                                              .measureUnitChanged(e));
                                      widget.textController.text = e.name.value
                                          .fold((l) => AppStrings.isEmpty,
                                              (r) => r);
                                      _focusNode.unfocus();
                                    },
                                  ),
                                ),
                              )
                              .toList()),
                    ),
                  ),
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MeasureUnitWatcherBloc, AbbreviationNameWatcherState>(
      listener: (context, state) {
        state.map(
            initial: (value) {
              measureUnitList = [];
            },
            loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpLoading(AppStrings.saving,
                    AppStrings.actionInProgressExplain, false))),
            loadSuccess: ((value) {
              measureUnitList = value.abbreviationName.asList();
              rebuildOverlay();
            }),
            loadFailure: ((value) => context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpError(
                    AppStrings.unableToReadError,
                    AppStrings.unableToReadErrorExplain,
                    false))));
      },
      builder: (context, state) {
        return LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              Expanded(
                flex: 9,
                child: CompositedTransformTarget(
                  link: _layerLink,
                  child: BlocConsumer<IngredientCoreFormBloc,
                      IngredientCoreFormState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      MeasureUnit selectedMeasureUnit =
                          state.ingredientCore.measureUnit;

                      return ((state.ingredientCore.measureUnit !=
                                  MeasureUnit.empty()) &
                              !_focusNode.hasFocus)
                          ? ListTile(
                              onTap: () {
                                FocusScope.of(context).requestFocus(_focusNode);
                              },
                              leading: SizedBox(
                                width: constraints.maxWidth / 10,
                              ),
                              title: Text(
                                selectedMeasureUnit.abr.value
                                    .fold((l) => AppStrings.isEmpty, (r) => r),
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              trailing: Text(
                                  selectedMeasureUnit.name.value.fold(
                                      (l) => AppStrings.isEmpty, (r) => r),
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
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
                                  context.read<MeasureUnitWatcherBloc>().add(
                                      const MeasureUnitWatcherEvent
                                          .watchAllStarted());
                                } else {
                                  context.read<MeasureUnitWatcherBloc>().add(
                                      MeasureUnitWatcherEvent
                                          .watchFilteredStarted(
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
              const Spacer(),
            ],
          );
        });
      },
    );
  }
}
