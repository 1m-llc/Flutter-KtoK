import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:flutter_ktok/presentation/constants/themes/theme_data_dark.dart';
import 'package:flutter_ktok/presentation/constants/themes/theme_data_light.dart';
import 'package:flutter_ktok/presentation/navigations/routes.dart';
import 'package:provider/provider.dart';

class AppComponent extends StatelessWidget {
  AppComponent() {
    // ルーターの初期化
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'KtoK',
      debugShowCheckedModeBanner: false, // ビルド時の画面左上のデバッグ帯を表示しない
      theme: Provider.of<AppThemeDataNotifier>(context).isDark ? themeDataDark : themeDataLight,
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
