import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

import '../ui/components/components.dart';
import 'factories/factories.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      title: '4Dev',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: makeSplashPage, transition: Transition.fade),
        GetPage(
          name: '/login',
          page: makeLoginPage,
          transition: Transition.fadeIn,
        ),
        GetPage(name: '/signup', page: makeSignUpPage),
        GetPage(
          name: '/surveys',
          page: makeSurveysPage,
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
