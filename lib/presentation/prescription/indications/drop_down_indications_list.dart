import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/card_item_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/drop_down_indication.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrescriptionIndicationsListDropDown extends StatefulWidget {
  final Widget dropDownIndication;
  final List<Indication> selectedIndications;
  final Function updateList;
  const PrescriptionIndicationsListDropDown(
      {super.key,
      required this.dropDownIndication,
      required this.selectedIndications,
      required this.updateList});

  @override
  State<PrescriptionIndicationsListDropDown> createState() =>
      _PrescriptionIndicationsListDropDownState();
}

class _PrescriptionIndicationsListDropDownState
    extends State<PrescriptionIndicationsListDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: widget.dropDownIndication,
          ),
          (widget.selectedIndications.length > 0)
              ? Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: LayoutBuilder(builder: (context, constraints) {
                      Category prevCategory = Category.empty();
                      return ListView.builder(
                          itemCount: widget.selectedIndications.length,
                          itemBuilder: (context, index) {
                            Indication e = widget.selectedIndications[index];

                            bool condition =
                                (prevCategory != e.indicationCategory);
                            prevCategory = e.indicationCategory;
                            return (condition)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: constraints.maxHeight / 3,
                                          width: constraints.maxWidth / 1.4,
                                          child: ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            isThreeLine: false,
                                            leading: e.indicationCategory
                                                .imageUrl.value
                                                .fold(
                                              (l) => null,
                                              (r) => SizedBox(
                                                width: constraints.maxWidth / 2,
                                                height:
                                                    constraints.maxHeight / 3,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 3,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: NetworkImage(
                                                              r,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 5,
                                                      child: AutoSizeText(
                                                        e.indicationCategory
                                                            .name.value
                                                            .fold((l) => '',
                                                                (r) => r),
                                                        wrapWords: false,
                                                        minFontSize: 14,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                        height: AppSize.s8,
                                      ),
                                      SizedBox(
                                          height: constraints.maxHeight / 3,
                                          width: constraints.maxWidth / 1.1,
                                          child: CardViewIItem(
                                            cardData: DropdownItemViewModel
                                                .fromPlainIndication(e),
                                            focusNode: FocusNode(),
                                            context: context,
                                            // onSelected: () {
                                            //   List<Indication> newList = [
                                            //     ...widget.selectedIndications
                                            //   ];
                                            //   newList.removeAt(index);

                                            //   widget.updateList(newList);
                                            // },
                                          )
                                          //   ListTile(
                                          //       trailing: IconButton(
                                          //         icon: Icon(Icons.cancel),
                                          //         color: Colors.red,
                                          // onPressed: () {
                                          //   List<Indication> newList = [
                                          //     ...widget.selectedIndications
                                          //   ];
                                          //   newList.removeAt(index);
                                          //   print("on pressed");
                                          //   print(newList);

                                          //   widget.updateList(newList);
                                          // context
                                          //     .read<PrescriptionFormBloc>()
                                          //     .add(PrescriptionFormEvent
                                          //         .onIndicationsChanged(
                                          //             selectedIndications));

                                          // widget.selectedIndications.sort(
                                          //     (a, b) => a.indicationCategory
                                          //         .name.value
                                          //         .fold((l) => '', (r) => r)
                                          //         .compareTo(b
                                          //             .indicationCategory
                                          //             .name
                                          //             .value
                                          //             .fold((l) => '',
                                          //                 (r) => r)));
                                          //   },
                                          // ),
                                          //       contentPadding: EdgeInsets.zero,
                                          //       isThreeLine: false,
                                          //       // leading:
                                          //       //     SizedBox.shrink(),
                                          //       title: Row(
                                          //         children: [
                                          //           Expanded(
                                          //             child: Padding(
                                          //               padding:
                                          //                   EdgeInsets.only(right: 8),
                                          //               child: Icon(
                                          //                   Icons.fiber_manual_record,
                                          //                   size: 12),
                                          //             ),
                                          //           ),
                                          //           Expanded(
                                          //             flex: 5,
                                          //             child: SingleChildScrollView(
                                          //               // direction: Axis.vertical,
                                          //               clipBehavior:
                                          //                   Clip.antiAliasWithSaveLayer,
                                          //               child: Text(
                                          //                   e.indicationName.value.fold(
                                          //                       (l) =>
                                          //                           AppStrings.isEmpty,
                                          //                       (r) => r),
                                          //                   style: Theme.of(context)
                                          //                       .textTheme
                                          //                       .titleLarge!
                                          //                       .copyWith(
                                          //                           fontSize:
                                          //                               AppSize.s18),
                                          //                   textAlign: TextAlign.center,
                                          //                   maxLines: 4,
                                          //                   overflow:
                                          //                       TextOverflow.ellipsis),
                                          //             ),
                                          //           ),
                                          //         ],
                                          //       )),
                                          ),
                                      SizedBox(
                                        height: AppSize.s8,
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: constraints.maxHeight / 3,
                                          width: constraints.maxWidth / 1.1,
                                          child: CardViewIItem(
                                            cardData: DropdownItemViewModel
                                                .fromPlainIndication(e),
                                            focusNode: FocusNode(),
                                            context: context,
                                            // onSelected: () {
                                            //   List<Indication> newList = [
                                            //     ...widget.selectedIndications
                                            //   ];
                                            //   newList.removeAt(index);

                                            //   widget.updateList(newList);
                                            // },
                                          )

                                          // ListTile(
                                          //     trailing: IconButton(
                                          //       icon: Icon(Icons.cancel),
                                          //       color: Colors.red,
                                          //       onPressed: () {
                                          //         List<Indication> newList = [
                                          //           ...widget.selectedIndications
                                          //         ];
                                          //         print("on pressed");
                                          //         print(newList);
                                          //         newList.removeAt(index);
                                          //         widget.updateList(newList);
                                          //         // context
                                          //         //     .read<PrescriptionFormBloc>()
                                          //         //     .add(PrescriptionFormEvent
                                          //         //         .onIndicationsChanged(
                                          //         //             selectedIndications));
                                          //         // widget.selectedIndications.sort(
                                          //         //     (a, b) => a.indicationCategory
                                          //         //         .name.value
                                          //         //         .fold((l) => '', (r) => r)
                                          //         //         .compareTo(b
                                          //         //             .indicationCategory
                                          //         //             .name
                                          //         //             .value
                                          //         //             .fold((l) => '',
                                          //         //                 (r) => r)));
                                          //       },
                                          //     ),
                                          //     contentPadding: EdgeInsets.zero,
                                          //     isThreeLine: false,
                                          //     // leading: SizedBox.shrink(),
                                          //     title: Row(
                                          //       children: [
                                          //         Expanded(
                                          //           child: Padding(
                                          //             padding:
                                          //                 EdgeInsets.only(right: 8),
                                          //             child: Icon(
                                          //                 Icons.fiber_manual_record,
                                          //                 size: 12),
                                          //           ),
                                          //         ),
                                          //         Expanded(
                                          //           flex: 5,
                                          //           child: SingleChildScrollView(
                                          //             // direction: Axis.vertical,
                                          //             clipBehavior:
                                          //                 Clip.antiAliasWithSaveLayer,
                                          //             child: Text(
                                          //                 e.indicationName.value.fold(
                                          //                     (l) =>
                                          //                         AppStrings.isEmpty,
                                          //                     (r) => r),
                                          //                 style: Theme.of(context)
                                          //                     .textTheme
                                          //                     .titleLarge!
                                          //                     .copyWith(
                                          //                         fontSize:
                                          //                             AppSize.s18),
                                          //                 textAlign: TextAlign.center,
                                          //                 maxLines: 4,
                                          //                 overflow:
                                          //                     TextOverflow.ellipsis),
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     )),
                                          ),
                                      SizedBox(
                                        height: AppSize.s8,
                                      ),
                                    ],
                                  );
                          });
                    }),
                  ))
              : Expanded(flex: 5, child: Icon(FontAwesomeIcons.list)),
        ],
      ),
    );
  }
}
