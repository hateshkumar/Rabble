
import '../../config/export.dart';

class AuthNavigationState {
  String? route;

  AuthNavigationState(
    this.route,
  );
}


class NavigatorHelper {
  static final router = FluroRouter();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'global:navigator');
  static final NavigatorHelper _instance = NavigatorHelper._internal();



  factory NavigatorHelper() {
    return _instance;
  }

  NavigatorHelper._internal();

  replaceCurrentAndNavigateTo(String route, [Object? arguments]) {
    assert(route != '/main', "TODO this doesn't work because who knows");
    navigatorKey.currentState
        ?.pushReplacementNamed(route, arguments: arguments);
  }

  //This will trigger willpopscope
  maybePop() {
    return navigatorKey.currentState?.maybePop();
  }

  canPop() {
    return navigatorKey.currentState?.canPop();
  }

  Future<void> navigateToRemoveUntil({
    required String to,
    String? removeTil,
    bool Function(Route<dynamic>)? predicate,
    Object? arguments,
  }) async {
    assert(!(removeTil != null && predicate != null),
        'Either provide predicate or removeTil');
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(
      to,
      predicate ?? ModalRoute.withName(removeTil!),
      arguments: arguments,
    );
  }

  popUntil<T extends Object>({
    String? popTil,
    bool Function(Route<dynamic>)? predicate,
  }) {
    assert(!(popTil != null && predicate != null),
        'Either provide predicate or popTil');
    navigatorKey.currentState?.popUntil(
      predicate ?? ModalRoute.withName(popTil!),
    );
  }

  void pop<T extends Object>({T? result}) {
    if (navigatorKey.currentState!.canPop()) {
      navigatorKey.currentState?.pop(result);
    }
  }

  Future<void> clearAllAndNavigateTo(String route, [Object? arguments]) {
    return navigateToRemoveUntil(
      to: route,
      predicate: (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  /// Only works with Fluro routes
  /// Can be useful to push main screen without animation
  /// - potentially so you can then push another on top
  Future clearAllAndPushWithoutAnimation<T extends Object>(String routeName) {
    return router.navigateTo(navigatorKey.currentContext!, routeName,
        clearStack: true, transition: TransitionType.none);
  }

  /// This makes sure to remove the routes from the navigation stack until we reach to the provided fluroroute
  ///
  /// If no screen is found associated with the fluroroute on the navigation stack it will then pop till the main screen(root of
  /// the app)
  ///
  /// To make this work properly the fluroroute should be defined in [oldRouteFromFluroRoute] function
  bool removeTil(Route<dynamic> route, String fluroRouteName) {
    String? routeName = route.settings.name;
    // Route name is null when navigation stack is empty
    // Won't happen usually
    if (routeName == null) return false;

    return false;
  }

  String replaceQueryParams(String route) {
    final replacedQueryParams =
        route.replaceAllMapped(RegExp(r'\?[0-9a-zA-Z=&]*'), (match) => "");
    return replacedQueryParams;
  }

  //Statics
  static RegExp regexFromFluroRoute(String fluroRoute) {
    // example route: "/meetups/:meetupId/applicants
    fluroRoute = fluroRoute.substring(1, fluroRoute.length);
    final replacedParams = fluroRoute
        .replaceAllMapped(RegExp(r':[^/]+'), (match) => r'[0-9a-zA-Z]+')
        .replaceAllMapped('/', (match) => r'\/');
    // Not needed as static route names does not have query params embedded only params are important.
    // final replacedQueryParams =
    //     replacedParams.replaceAllMapped(RegExp(r'\?[0-9a-zA-Z=&]*'), (match) => "");
    return RegExp("^$replacedParams\$");
  }

  Future<T?> navigateTo<T>(String route,
      [Object? arguments, bool force = false]) async {
    return navigatorKey.currentState?.pushNamed(route, arguments: arguments);
  }

  Future<T?> navigateToClearAll<T>(String route,
      [Object? arguments, bool force = false]) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);

  }


  navigateToScreen(String name,{Object? arguments,}) {
    navigateTo(name,arguments);
  }

  navigateAnClearAll(String name,{Object? arguments,}) {
    navigateToClearAll(name,arguments);
  }


}
