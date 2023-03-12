import 'package:rabble/config/export.dart';


class RouteHandlers {
  static Handler notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundScreen();
    // return;
  });

  static Handler makeHandler(Function creator) =>
      Handler(handlerFunc: (context, parameters) => creator());

}
