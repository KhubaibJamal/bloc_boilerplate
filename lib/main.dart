import 'package:bloc_boilerplate/presentation/core/constants/constants.dart';
import 'package:bloc_boilerplate/presentation/core/theme/theme.dart';
import 'package:bloc_boilerplate/presentation/l10n/l10n.dart';
import 'package:bloc_boilerplate/presentation/routes/routes.dart';
import 'package:bloc_boilerplate/presentation/utils/service_locator.dart';
import 'package:bloc_boilerplate/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    ServiceLocator.setContext(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: Utils.scaffoldMessengerKey,
        title: Constants.appName,
        initialRoute: RouteNames.splashScreen,
        locale: const Locale('en'),
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        onGenerateRoute: Routes.generateRoute,
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
      ),
    );
  }
}
