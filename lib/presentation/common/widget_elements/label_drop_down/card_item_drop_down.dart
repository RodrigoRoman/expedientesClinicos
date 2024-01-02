import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_display/card_image.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class CardViewIItem extends StatefulWidget {
  CardViewIItem({
    super.key,
    this.dataTarget,
    // required this.size,
    required this.cardData,
    required this.context,
    this.onSelected,
    this.primaryAction,
    String? primaryActionText,
    this.secondaryAction,
    String? secondaryActionText,
    required FocusNode focusNode,
  })  : primaryActionText = "",
        secondaryActionText = "";

  // final Size size;
  final DropdownItemViewModel cardData;
  DropdownItemViewModel? dataTarget;
  final BuildContext context;
  final Function? onSelected;
  final String? primaryActionText;
  final String? secondaryActionText;
  final Function? primaryAction;
  final Function? secondaryAction;

  @override
  State<CardViewIItem> createState() => _CardViewIItemState();
}

class _CardViewIItemState extends State<CardViewIItem> {
  Widget subtitleWidget = const SizedBox.shrink();

  @override
  void initState() {
    super.initState();
    subtitleWidget = (widget.cardData.subtitle != null)
        ? widget.cardData.subtitle!.value.fold(
            (l) => Container(
                  color: Colors.yellow,
                ),
            (r) => (r.length < AppSize.iS6)
                ? Center(
                    child: AutoSizeText(
                    r,
                    style: TextStyleConstants.abbreviationH1,
                    textAlign: TextAlign.center,
                    wrapWords: false,
                  ))
                : Center(
                    child: AutoSizeText(
                      r,
                      textAlign: TextAlign.center,
                      minFontSize: 8,
                      wrapWords: false,
                    ),
                  ))
        : const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    bool selected = widget.dataTarget == widget.cardData;
    return GestureDetector(
      child: Card(
        color: selected ? Colors.blue.shade50 : Colors.white70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              (widget.cardData.imageURL != null)
                  ? Expanded(
                      flex: 3,
                      child: CardImage(
                        imageURL: widget.cardData.imageURL!,
                      ),
                    )
                  : (widget.cardData.subtitle != null)
                      ? Expanded(flex: 2, child: subtitleWidget)
                      : SizedBox.shrink(),
              Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: widget.cardData.title.value.fold(
                              (l) => Container(
                                  color: Colors.amber,
                                  child: Text(l.failedValue)),
                              (r) => LayoutBuilder(
                                      builder: (context, subtitleConstraints) {
                                    return SizedBox(
                                        width:
                                            subtitleConstraints.maxWidth / 1.2,
                                        height:
                                            subtitleConstraints.maxHeight / 1.3,
                                        child: Center(
                                          child: AutoSizeText(
                                            r,
                                            wrapWords: false,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium,
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ));
                                  }))),
                      ((subtitleWidget != const SizedBox.shrink()) &&
                              widget.cardData.imageURL == null)
                          ? const SizedBox.shrink()
                          : Expanded(flex: 1, child: subtitleWidget)
                    ],
                  )),
              (widget.primaryAction != null || widget.secondaryAction != null)
                  ? Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          (widget.primaryAction != null)
                              ? Expanded(
                                  child: ElevatedButton(
                                  child: Text(widget.primaryActionText!),
                                  onPressed: () => widget.primaryAction!(),
                                ))
                              : const SizedBox.shrink(),
                          (widget.primaryAction != null)
                              ? Expanded(
                                  child: ElevatedButton(
                                  child: Text(widget.secondaryActionText!),
                                  onPressed: () => widget.primaryAction!(),
                                ))
                              : const SizedBox.shrink(),
                        ],
                      ))
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
      onTap: () {
        widget.onSelected != null ? widget.onSelected!(widget.cardData) : null;
      },
    );
  }
}
