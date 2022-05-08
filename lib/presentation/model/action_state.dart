import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_state.freezed.dart';

@freezed
class ActionState<T> with _$ActionState<T> {
  const ActionState._();
  const factory ActionState.init() = _ActionInit<T>;
  const factory ActionState.data(T value) = _ActionData<T>;
  const factory ActionState.loading() = _ActionLoading<T>;
  const factory ActionState.error(Object error, {StackTrace? stackTrace}) = _ActionError<T>;

  bool get isLoading => this is _ActionLoading;
}
