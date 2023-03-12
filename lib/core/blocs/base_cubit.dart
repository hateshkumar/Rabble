import 'package:rabble/config/export.dart';

abstract class RabbleBaseCubit<T extends RabbleBaseState> extends Cubit<T> {
  RabbleBaseCubit(T state) : super(state);

  /// Super.emit throws exception on [isClosed].
  /// This override suppresses the exception with early return.
  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
