import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_form_event.dart';
part 'medicine_form_state.dart';
part 'medicine_form_bloc.freezed.dart';

class MedicineFormBloc extends Bloc<MedicineFormEvent, MedicineFormState> {
  MedicineFormBloc() : super(_Initial()) {
    on<MedicineFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
