import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchAbbreviationNameRoute extends StatefulWidget {
  final TextEditingController searchFieldController;
  final String hintText;
  final Function newFunction;
  final Function onSelected;
  final Function onSearchWithKey;
  final Function onSearchAll;
  final NameAbbreviation abbreviationName;
  final List<NameAbbreviation> abbreviationNameList;

  const DropdownSearchAbbreviationNameRoute(
      {super.key,
      required this.abbreviationName,
      required this.searchFieldController,
      required this.onSelected,
      required this.onSearchWithKey,
      required this.onSearchAll,
      required this.abbreviationNameList,
      required this.hintText,
      required this.newFunction});
  @override
  _DropdownSearchAbbreviationNameRouteState createState() =>
      _DropdownSearchAbbreviationNameRouteState();
}

class _DropdownSearchAbbreviationNameRouteState
    extends State<DropdownSearchAbbreviationNameRoute> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry;
  GlobalKey globalKey = GlobalKey();
  final LayerLink _layerLink = LayerLink();

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
                          children: widget.abbreviationNameList
                              .map(
                                (e) => Container(
                                  margin: const EdgeInsets.all(AppSize.s2_5),
                                  decoration: BoxDecoration(
                                    color: (widget.abbreviationName == e)
                                        ? Theme.of(context)
                                            .colorScheme
                                            .secondary
                                        : Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: ListTile(
                                    selected: widget.abbreviationName == e,
                                    leading: Text(e.abbr.value.fold(
                                        (l) => AppStrings.isEmpty, (r) => r)),
                                    title: FittedBox(
                                      child: Text(e.name.value.fold(
                                          (l) => AppStrings.isEmpty, (r) => r)),
                                    ),
                                    onTap: () {
                                      widget.onSelected(e);
                                      // context.read<MedicineFormBloc>().add(
                                      //     MedicineFormEvent
                                      //         .administrationRouteChanged(e));
                                      widget.searchFieldController.text =
                                          e.name.value.fold(
                                              (l) => AppStrings.isEmpty,
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      rebuildOverlay();
    });
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          Expanded(
            flex: 15,
            child: CompositedTransformTarget(
              link: _layerLink,
              child: BlocConsumer<MedicineFormBloc, MedicineFormState>(
                listener: (context, state) {},
                builder: (context, state) {
                  // NameAbbreviation selectedAdministrationRoute =
                  //     state.medicine.administrationRoute;

                  return ((widget.abbreviationName !=
                              NameAbbreviation.empty()) &
                          !_focusNode.hasFocus)
                      ? ListTile(
                          // tileColor: Colors.red,
                          onTap: () {
                            FocusScope.of(context).requestFocus(_focusNode);
                          },
                          // leading: SizedBox(
                          //   width: constraints.maxWidth / 20,
                          // ),
                          title: FittedBox(
                            child: Text(
                              widget.abbreviationName.abbr.value
                                  .fold((l) => AppStrings.isEmpty, (r) => r),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          trailing: FittedBox(
                            child: Text(
                                widget.abbreviationName.name.value
                                    .fold((l) => AppStrings.isEmpty, (r) => r),
                                style: Theme.of(context).textTheme.bodySmall),
                          ),
                        )
                      : TextFormField(
                          // autofocus: true,
                          key: globalKey,
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
                              // context
                              //     .read<AdministrationRouteWatcherBloc>()
                              //     .add(const AbbreviationNameWatcherEvent
                              //         .watchAllStarted());
                            } else {
                              widget.onSearchWithKey(
                                  widget.searchFieldController.text);
                              // context
                              //     .read<AdministrationRouteWatcherBloc>()
                              //     .add(AbbreviationNameWatcherEvent
                              //         .watchFilteredStarted(
                              //             widget.searchFieldController.text));
                            }
                          },
                        );
                },
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 5,
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
          const Spacer(
            flex: 2,
          ),
        ],
      );
    });
    // },
    // );
  }
}
