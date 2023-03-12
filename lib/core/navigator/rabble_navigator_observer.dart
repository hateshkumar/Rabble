import 'package:rabble/config/export.dart';


class RabbleNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) return;
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //this triggers when we use pushNamedAndRemoveUntil
    // Log().debug("Did remove ${route?.settings?.name} -> ${previousRoute?.settings?.name}");
    if (previousRoute == null) return;
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    //We are not using replace
    // globalBloc.hideSnackBar();
    if (kDebugMode) {
      print(newRoute?.settings.name);
    }
  }
}
