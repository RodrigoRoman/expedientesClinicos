import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/medicine_category/pop_up_medicine_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchMedicineCategory extends StatefulWidget {
  bool requestedSubmition;
  DropdownSearchMedicineCategory({super.key, this.requestedSubmition = false});

  @override
  State<DropdownSearchMedicineCategory> createState() =>
      _DropdownSearchMedicineCategoryState();
}

class _DropdownSearchMedicineCategoryState
    extends State<DropdownSearchMedicineCategory> {
  GlobalKey globalKey = GlobalKey();
  List<Category> categoryList = [];
  TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MedicineCategoryWatcherBloc>()
          ..add(const CategoryWatcherEvent.watchAllStarted()),
        child: BlocConsumer<MedicineCategoryWatcherBloc, CategoryWatcherState>(
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
                    until: FullScreenStatePageRoute.name,
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
                    until: FullScreenStatePageRoute.name,
                  ))));
        }, builder: (context, state) {
          return DropDownSearchHead(
              searchFieldController: searchFieldController,
              onSearchWithKey: (key) {
                context
                    .read<MedicineCategoryWatcherBloc>()
                    .add(CategoryWatcherEvent.watchFilteredStarted(key));
              },
              onSearchAll: () {
                context
                    .read<MedicineCategoryWatcherBloc>()
                    .add(const CategoryWatcherEvent.watchAllStarted());
              },
              valid: widget.requestedSubmition &&
                  (context
                          .read<GenericMedicineFormBloc>()
                          .state
                          .medicine
                          .category ==
                      Category.empty()),
              newFunction: () {
                context
                    .read<StateRendererBloc>()
                    .add(StateRendererEvent.popUpForm(
                      title: AppStrings.createCategory,
                      bodyWidget: MedicineCategoryForm(
                        category: Category.empty(),
                        onCreated: (Category category) {
                          context.read<GenericMedicineFormBloc>().add(
                              GenericMedicineFormEvent.categoryChanged(
                                  category));
                          searchFieldController.text =
                              category.name.value.fold((l) => '', (r) => r);
                          setState(() {});
                        },
                      ),
                      until: AppStrings.popUp,
                    ));
              },
              hintText: AppStrings.category,
              onSelected: (DropdownItemViewModel nameAbbr) {
                context.read<GenericMedicineFormBloc>().add(
                    GenericMedicineFormEvent.categoryChanged(
                        nameAbbr.category!));
                setState(() {});
              },
              element: DropdownItemViewModel.fromCategory(context
                  .read<GenericMedicineFormBloc>()
                  .state
                  .medicine
                  .category),
              listElements: categoryList.map((e) {
                return DropdownItemViewModel.fromCategory(e);
              }).toList());
        }));
  }
}
