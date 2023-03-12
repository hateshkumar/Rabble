
import 'package:rabble/config/export.dart';



class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Routes.configureRoutes(NavigatorHelper.router);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (_, orientation, device) {
      return RabbleTheme(
          data: RabbleTheme.themeData,
          child: MaterialApp(
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'Rabble',
            builder: (context, child) => DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText1!,
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: child),
            ),
            navigatorKey: NavigatorHelper.navigatorKey,
            navigatorObservers: <NavigatorObserver>[
              // routeObserver,
             RabbleNavigatorObserver(),
            ],
            initialRoute: '/home',
            onGenerateRoute: NavigatorHelper.router.generator,
            theme: RabbleTheme.generateThemeDataFromrabbleThemeData(
                RabbleTheme.themeData),
          )

      );
    });
  }

}
