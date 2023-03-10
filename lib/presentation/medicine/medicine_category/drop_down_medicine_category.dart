import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/category/drop_down_search_categories.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_category/pop_up_medicine_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchMedicineCategory extends StatefulWidget {
  const DropdownSearchMedicineCategory({super.key});

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
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  categoryList = value.categories.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain,
                      null,
                      300,
                      500))));
        }, builder: (context, state) {
          return DropdownSearchCategories(
            category: context.read<MedicineFormBloc>().state.medicine.category,
            searchFieldController: searchFieldController,
            onSelected: (category) {
              context
                  .read<MedicineFormBloc>()
                  .add(MedicineFormEvent.categoryChanged(category));
            },
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
            listElements: categoryList,
            hintText: AppStrings.category,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear Unidad de Medida',
                      MedicineCategoryForm(
                        category: Category.empty(),
                      ),
                      300,
                      300,
                      null));
            },
          );
        }));
  }
}
