import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_expanded_view_model.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_display/card_image.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class ExpandedCardViewIItem extends StatefulWidget {
  ExpandedCardViewIItem({
    super.key,
    this.dataTarget,
    // required this.size,
    required this.cardData,
    required this.context,
    this.onSelected,
    this.onSlideRight,
    String? primaryActionText,
    this.onSlideLeft,
    this.onLongPress,
    String? secondaryActionText,
    required FocusNode focusNode,
  })  : primaryActionText = "",
        secondaryActionText = "";

  // final Size size;
  final DropdownExpandedItemViewModel cardData;
  DropdownExpandedItemViewModel? dataTarget;
  final BuildContext context;
  final Function? onSelected;
  final String? primaryActionText;
  final String? secondaryActionText;
  final Function? onSlideRight;
  final Function? onSlideLeft;
  final Function? onLongPress;

  @override
  State<ExpandedCardViewIItem> createState() => _ExpandedCardViewIItemState();
}

class _ExpandedCardViewIItemState extends State<ExpandedCardViewIItem> {
  @override
  Widget build(BuildContext context) {
    List<FullName?> columns = [
      widget.cardData.column1,
      widget.cardData.column2,
      widget.cardData.column3
    ];
    bool columnsHasNonNull = columns.any((element) => element != null);
    List<Widget> columnWidgets = columns
        .where((column) => column != null) // Filter null elements
        .map((column) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    margin: const EdgeInsets.all(3),
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                        borderRadius: BoderRadiusStyle.allCurve,
                        color: Colors.grey[200]),
                    child: AutoSizeText(
                      column!.value.fold((l) => '', (r) => r),
                      wrapWords: false,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
              ),
            )) // Transforms each column into Widget Text
        .toList();
    List<List<Indication>> listIndicationsByCategory = [[]];
    //List of Indications
    print("list categories");
    print(widget.cardData.listIndications);
    if (widget.cardData.listIndications.length > 0) {
      List<Indication> listIndications = List<Indication>.from(widget
          .cardData.listIndications!.value
          .fold((l) => [], (r) => r.asList()));
      listIndications.sort((a, b) => a.indicationCategory.name.value
          .fold((l) => '', (r) => r)
          .compareTo(
              b.indicationCategory.name.value.fold((l) => '', (r) => r)));
      listIndicationsByCategory = [[]];
      Category prevCategory = listIndications[0].indicationCategory;
      int idx = 0;
      for (var indication in listIndications) {
        if (indication.indicationCategory != prevCategory) {
          listIndicationsByCategory.add([indication]);
          prevCategory = indication.indicationCategory;
          idx += 1;
        } else {
          listIndicationsByCategory[idx].add(indication);
        }
      }
    }

    //IN case i need to handle in some way the selection of a card
    bool selected = false;
    return GestureDetector(
      child: Card(
        color: selected ? Colors.blue.shade50 : Colors.white70,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      (widget.cardData.imageURL != null)
                          ? Expanded(
                              flex: 1,
                              child: CardImage(
                                imageURL: widget.cardData.imageURL!,
                              ))
                          : const SizedBox.shrink(),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Spacer(),
                              Expanded(
                                  child: AutoSizeText(
                                widget.cardData.title.value
                                    .fold((l) => '', (r) => r),
                                wrapWords: false,
                                minFontSize: 20,
                                maxLines: 2,
                              )),
                              widget.cardData.subtitle != null
                                  ? Expanded(
                                      child: AutoSizeText(
                                      widget.cardData.subtitle!.value
                                          .fold((l) => '', (r) => r),
                                      wrapWords: false,
                                      maxLines: 2,
                                    ))
                                  : const SizedBox.shrink()
                            ],
                          ))
                    ],
                  ),
                ),
                (columnsHasNonNull)
                    ? Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: columnWidgets,
                        ),
                      )
                    : const SizedBox.shrink(),
                Spacer(),
                widget.cardData.listIndications.length > 0
                    ? Expanded(
                        flex: 4,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: listIndicationsByCategory
                                  .map((currentIndicationsList) =>
                                      LayoutBuilder(
                                          builder: (context, constraints) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5.0),
                                          child: Container(
                                            height: constraints.maxHeight,
                                            width: CardItemWidth.m,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BoderRadiusStyle.allCurve,
                                                color: Colors.grey[200]),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      children: [
                                                        const Spacer(),
                                                        Expanded(
                                                          flex: 1,
                                                          child: CardImage(
                                                            imageURL:
                                                                currentIndicationsList[
                                                                        0]
                                                                    .indicationCategory
                                                                    .imageUrl,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: AutoSizeText(
                                                            currentIndicationsList[
                                                                    0]
                                                                .indicationCategory
                                                                .name
                                                                .value
                                                                .fold((l) => '',
                                                                    (r) => r),
                                                            minFontSize: 8,
                                                            wrapWords: false,
                                                            maxLines: 1,
                                                          ),
                                                        ),
                                                        const Spacer()
                                                      ],
                                                    )),
                                                const Spacer(),
                                                Expanded(
                                                  flex: 8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BoderRadiusStyle
                                                                .allCurve,
                                                        color:
                                                            Colors.grey[350]),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children:
                                                            currentIndicationsList
                                                                .map(
                                                                    (indication) {
                                                          return Row(
                                                            children: [
                                                              const Expanded(
                                                                child:
                                                                    AutoSizeText(
                                                                  '• ',
                                                                  minFontSize:
                                                                      40,
                                                                ), // Bullet point
                                                              ),
                                                              Expanded(
                                                                flex: 5,
                                                                child: AutoSizeText(indication
                                                                    .indicationName
                                                                    .value
                                                                    .fold(
                                                                        (l) =>
                                                                            '',
                                                                        (r) =>
                                                                            r)),
                                                              ),
                                                            ],
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }))
                                  .toList()),
                        ))
                    : const SizedBox.shrink()
              ],
            )),
      ),
      onTap: () {
        widget.onSelected != null ? widget.onSelected!(widget.cardData) : null;
      },
    );
  }
}
