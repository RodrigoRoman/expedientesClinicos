part of 'label_double_amount_actor_bloc.dart';

@freezed
class LabelDoubleAmountActorEvent with _$LabelDoubleAmountActorEvent {
  const factory LabelDoubleAmountActorEvent.deleted(
      LabelDoubleAmount labelDoubleAmount) = _DeleteLabelDoubleAmount;
  const factory LabelDoubleAmountActorEvent.faker() = _FakeLabelDoubleAmount;
}
