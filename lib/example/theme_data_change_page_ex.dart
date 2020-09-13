import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// ウィジェット全体をProviderでラップ
    ChangeNotifierProvider(
      /// #1 を設定
      create: (_) => ExAppThemeDataNotifier(),
      /// #2
      child: ExAppComponent(),
    ),
  );
}

/// #1
/// デフォルトはダークモード=falseです.
/// [changeThemeData]メソッドが呼び出されると、LightモードとDarkモードが切り替わり、状態の変化を通知します.
class ExAppThemeDataNotifier extends ChangeNotifier {
  bool _isDark;
  ExAppThemeDataNotifier() : _isDark = false;
  bool get isDark => _isDark;

  ThemeData buildTheme() => _isDark ? ThemeData.dark() : ThemeData.light();

  void changeThemeData() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

/// #2
/// ウィジェットを構築するStatelessWidgetを継承したクラスです.
/// MaterialAppのthemeでLightモードとDarkモードを切り替えています.
/// [Provider.of(context)]では状態の変化が合ったときにリビルドします.
class ExAppComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ExAppThemeDataNotifier>(context);

    final app = MaterialApp(
      title: 'ThemeData Change',
      /// ここで状態変化を検知してリビルドを行います.
      /// この時、[ExAppThemeDataNotifier]の[isDark]により、LightモードかDarkモードかを判定して、ThemeDataを設定します.
      theme: Provider.of<ExAppThemeDataNotifier>(context).isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Switch.adaptive(
            value: theme.isDark,
            onChanged: (_) {
              /// スイッチが切り替わると、#1の[changeThemeData]が呼び出されます.
              theme.changeThemeData();
            },
          ),
        ),
      ),
    );
    return app;
  }
}

