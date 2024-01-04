import 'package:expedientes_clinicos/domain/core/view_models/drop_down_expanded_view_model.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/expanded_card_item_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/drop_down_prescription.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class PrescriptionListSelect extends StatefulWidget {
  const PrescriptionListSelect({super.key});

  @override
  State<PrescriptionListSelect> createState() => _PrescriptionListSelectState();
}

class _PrescriptionListSelectState extends State<PrescriptionListSelect> {
  List<DropdownExpandedItemViewModel> expandedItems = [];
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s14),
              child: Column(
                children: [
                  SizedBox(
                    height: InputFieldHeight.s,
                  ),
                  SizedBox(
                    height: InputFieldHeight.m,
                    child: DropdownSearchPrescription(
                      onSelected: (DropdownExpandedItemViewModel
                          dropDownExpandedItemViewModel) {
                        print("about to change");
                        if (!expandedItems
                            .contains(dropDownExpandedItemViewModel)) {
                          expandedItems.add(dropDownExpandedItemViewModel);
                          print(expandedItems);
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: InputFieldHeight.xs,
                  ),
                  SizedBox(
                      height: InputFieldHeight.xxl,
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: expandedItems.map(
                              (e) {
                                return SizedBox(
                                  height: CardItemHeight.l,
                                  child: ExpandedCardViewIItem(
                                    cardData: e,
                                    context: context,
                                    dataTarget: e,
                                    focusNode: _focusNode,
                                    onSelected: (data) {},
                                  ),
                                );
                              },
                            ).toList()),
                      ))
                ],
              ),
            ),
          ));
    });
  }
}
