import 'package:rabble/config/export.dart';

class HomeCubit extends RabbleBaseCubit {
  HomeCubit() : super(RabbleBaseState.idle());
  BehaviorSubject<bool> expanded$ = BehaviorSubject.seeded(true);
}
