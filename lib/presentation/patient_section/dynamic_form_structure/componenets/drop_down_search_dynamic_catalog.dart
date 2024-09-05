import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_watcher/dynamic_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/pop_up_dynamic_category_form.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/patient_section_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownSearchDynamicCatalog extends StatefulWidget {
  bool requestedSubmition;
  Function onCreated;
  Function onSelected;
  FormSection currentFormSection;
  DropDownSearchDynamicCatalog(
      {required this.onCreated,
      required this.onSelected,
      required this.currentFormSection,
      this.requestedSubmition = false,
      super.key});

  @override
  State<DropDownSearchDynamicCatalog> createState() =>
      _DropDownSearchDynamicCatalogState();
}

class _DropDownSearchDynamicCatalogState
    extends State<DropDownSearchDynamicCatalog> {
  GlobalKey globalKey = GlobalKey();
  List<FormSection> formSectionList = [];
  TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DynamicFormWatcherBloc>()
          ..add(const DynamicFormWatcherEvent.watchAllStarted()),
        child: BlocConsumer<DynamicFormWatcherBloc, DynamicFormWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                formSectionList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                    until: FullScreenStatePageRoute.name,
                  ))),
              loadSuccess: ((value) {
                setState(() {
                  formSectionList = value.formSections.asList();
                });
              }),
              loadFailure: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError(
                    title: AppStrings.unableToReadError,
                    message: AppStrings.unableToReadErrorExplain,
                    until: FullScreenStatePageRoute.name,
                  ))));
        }, builder: (context, state) {
          return DropDownSearchHead(
              searchFieldController: searchFieldController,
              onSearchWithKey: (key) {
                context
                    .read<DynamicFormWatcherBloc>()
                    .add(DynamicFormWatcherEvent.watchFilteredStarted(key));
              },
              onSearchAll: () {
                context
                    .read<DynamicFormWatcherBloc>()
                    .add(const DynamicFormWatcherEvent.watchAllStarted());
              },
              valid: !(widget.requestedSubmition &&
                  (widget.currentFormSection == FormSection.empty())),
              newFunction: () {
                context
                    .read<StateRendererBloc>()
                    .add(StateRendererEvent.fullScreenForm(
                      title: AppStrings.defineSection,
                      bodyWidget: DynamicSectionFormStructurePage(
                          // form: FormSection.empty(),
                          // onCreated: (FormSection formSection) {
                          //   widget.onCreated(formSection);
                          //   setState(() {});
                          // },
                          ),
                      message: "",
                      // until: AppStrings.,
                    ));
              },
              hintText: AppStrings.category,
              onSelected: (DropdownItemViewModel dropItem) {
                print("inside catalog drop");
                print(dropItem);
                widget.onSelected(dropItem);
                // setState(() {});
              },
              element:
                  // DropdownItemViewModel.empty(),
                  DropdownItemViewModel.fromFormSection(
                      widget.currentFormSection),
              listElements: formSectionList.map((e) {
                return DropdownItemViewModel.fromFormSection(e);
              }).toList());
        }));
  }
}
