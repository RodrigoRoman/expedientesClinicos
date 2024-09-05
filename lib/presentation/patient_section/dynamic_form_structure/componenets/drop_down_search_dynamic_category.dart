import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/dynamic_category_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/pop_up_dynamic_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDynamicCategory extends StatefulWidget {
  bool requestedSubmition;
  Function onCreated;
  Function onSelected;
  Category currentCategory;
  DropdownSearchDynamicCategory(
      {required this.onCreated,
      required this.onSelected,
      required this.currentCategory,
      this.requestedSubmition = false,
      super.key});

  @override
  State<DropdownSearchDynamicCategory> createState() =>
      _DropdownSearchDynamicCategoryState();
}

class _DropdownSearchDynamicCategoryState
    extends State<DropdownSearchDynamicCategory> {
  GlobalKey globalKey = GlobalKey();
  List<Category> categoryList = [];
  TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DynamicCategoryWatcherBloc>()
          ..add(const CategoryWatcherEvent.watchAllStarted()),
        child: BlocConsumer<DynamicCategoryWatcherBloc, CategoryWatcherState>(
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
                    .read<DynamicCategoryWatcherBloc>()
                    .add(CategoryWatcherEvent.watchFilteredStarted(key));
              },
              onSearchAll: () {
                context
                    .read<DynamicCategoryWatcherBloc>()
                    .add(const CategoryWatcherEvent.watchAllStarted());
              },
              valid: !(widget.requestedSubmition &&
                  (widget.currentCategory == Category.empty())),
              newFunction: () {
                context
                    .read<StateRendererBloc>()
                    .add(StateRendererEvent.popUpForm(
                      title: AppStrings.createCategory,
                      bodyWidget: DynamicCategoryForm(
                        category: Category.empty(),
                        onCreated: (Category category) {
                          widget.onCreated(category);
                          setState(() {});
                        },
                      ),
                      until: AppStrings.popUp,
                    ));
              },
              hintText: AppStrings.category,
              onSelected: (DropdownItemViewModel nameAbbr) {
                widget.onSelected(nameAbbr.category);
                // setState(() {});
              },
              element:
                  DropdownItemViewModel.fromCategory(widget.currentCategory),
              listElements: categoryList.map((e) {
                return DropdownItemViewModel.fromCategory(e);
              }).toList());
        }));
  }
}
