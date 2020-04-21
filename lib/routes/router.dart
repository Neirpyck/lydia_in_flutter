import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:lydia/routes/routes_names.dart';
import 'package:lydia/screens/home/home.dart';
import 'package:lydia/screens/settings/settings.dart';


class FluroRouter {
  static Router router = Router();

  static Handler _homehandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> param) =>
          HomePage());
  static Handler _settingshandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> param) =>
          SettingsPage());

  static void setupRouter() {
    router.define(HomeRoute, handler: _homehandler);
    router.define(SettingsRoute, handler: _settingshandler);
  }
}
