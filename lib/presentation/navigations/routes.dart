import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/app_icon_setup_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/blank_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/dark_theme_data_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/light_theme_data_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/link_collection_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/lunch_screen_setup_page.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/theme_data_change_page.dart';
import 'package:flutter_ktok/presentation/views/pages/drawer/about_ktok_page.dart';
import 'package:flutter_ktok/presentation/views/pages/main_page.dart';
import 'package:flutter_ktok/presentation/views/pages/test_tips/integration_test_page.dart';
import 'package:flutter_ktok/presentation/views/pages/test_tips/unit_test_page.dart';
import 'package:flutter_ktok/presentation/views/pages/test_tips/widget_test_page.dart';

class Application {
  static FluroRouter router;
}

class Routes {
  static final blankRoute = "/blank";

  /// トップページ
  static final rootRoute = "/";

  /// サイドメニュー
  static final aboutKtoKRoute = "/about_ktok";
  static final linkCollectionRoute = "/link_collection";

  /// デザイン
  static final themeDataChangeRoute = "/theme_data_change";
  static final lightThemeDataRoute = "/light_theme_data";
  static final darkThemeDataRoute = "/dark_theme_data";
  static final appIconSetupRoute = "/app_icon_setup";
  static final lunchScreenSetupRoute = "/lunch_screen_setup";

  /// テスト
  static final unitTestRoute = "/unit_test";
  static final widgetTestRoute = "/widget_test";
  static final integrationTestRoute = "/integration_test";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        // ignore: missing_return
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    router.define(
      blankRoute,
      handler: handler(BlankPage()),
    );

    /// トップページ
    router.define(
      rootRoute,
      handler: handler(MainPage()),
    );

    /// サイドメニュー
    router.define(
      aboutKtoKRoute,
      handler: handler(AboutKtoKPage()),
    );
    router.define(
      linkCollectionRoute,
      handler: handler(LinkCollectionPage()),
    );

    /// デザイン
    router.define(
      themeDataChangeRoute,
      handler: handler(ThemeDataChangePage()),
    );
    router.define(
      lightThemeDataRoute,
      handler: handler(LightThemeDataPage()),
    );
    router.define(
      darkThemeDataRoute,
      handler: handler(DarkThemeDataPage()),
    );
    router.define(
      appIconSetupRoute,
      handler: handler(AppIconSetupPage()),
    );
    router.define(
      lunchScreenSetupRoute,
      handler: handler(LunchScreenSetupPage()),
    );

    /// テスト
    router.define(
      unitTestRoute,
      handler: handler(UnitTestPage()),
    );
    router.define(
      widgetTestRoute,
      handler: handler(WidgetTestPage()),
    );
    router.define(
      integrationTestRoute,
      handler: handler(IntegrationTestPage()),
    );
  }

  static Handler handler(Widget w) {
    return Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return w;
    });
  }
}
