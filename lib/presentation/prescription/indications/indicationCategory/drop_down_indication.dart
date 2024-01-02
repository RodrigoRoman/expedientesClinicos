import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/indication_category_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/indicationCategory/indication_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchIndicationCategory extends StatefulWidget {
  const DropdownSearchIndicationCategory({super.key});

  @override
  State<DropdownSearchIndicationCategory> createState() =>
      _DropdownSearchIndicationCategoryState();
}

class _DropdownSearchIndicationCategoryState
    extends State<DropdownSearchIndicationCategory> {
  GlobalKey globalKey = GlobalKey();
  List<Category> categoryList = [];
  TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<IndicationCategoryWatcherBloc>()
          ..add(const CategoryWatcherEvent.watchAllStarted()),
        child:
            BlocConsumer<IndicationCategoryWatcherBloc, CategoryWatcherState>(
                listener: (context, state) {
          state.map(
              initial: (value) {
                categoryList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                  ))),
              loadSuccess: ((value) {
                setState(() {
                  categoryList = value.categories.asList();
                });
              }),
              loadFailure: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError(
                    title: AppStrings.unableToReadError,
                    message: AppStrings.unableToReadErrorExplain,
                  ))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromCategory(context
                .read<MedicineIndicationFormBloc>()
                .state
                .indication
                .indicationCategory),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              context.read<MedicineIndicationFormBloc>().add(
                  IndicationFormEvent.onCategoryChanged(
                      dropdownItemViewModel.category!));
              // searchFieldController.text = '';
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<IndicationCategoryWatcherBloc>()
                  .add(CategoryWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<IndicationCategoryWatcherBloc>()
                  .add(const CategoryWatcherEvent.watchAllStarted());
            },
            listElements: categoryList
                .map((e) => DropdownItemViewModel.fromCategory(e))
                .toList(),
            hintText: AppStrings.category,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: 'Crear Unidad de Medida',
                      bodyWidget: IndicationCategoryForm(
                        category: Category.empty(),
                        onCreated: (Category category) {
                          context.read<MedicineIndicationFormBloc>().add(
                              IndicationFormEvent.onCategoryChanged(category));
                          searchFieldController.text =
                              category.name.value.fold((l) => '', (r) => r);
                          setState(() {});
                        },
                      ),
                      until: FullScreenStatePageRoute.name));
            },
          );
        }));
  }
}
