import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCollectionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppThemeDataNotifier>(context).isDark ? ThemeData.dark() : ThemeData.light();

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(Icons.build, color: theme.primaryIconTheme.color,),
              title: Text("環境構築", style: TextStyle(color: theme.secondaryHeaderColor),),
            ),
            decoration: BoxDecoration(color: theme.primaryColor,),
          ),
          ListTile(
            title: Text('macOS install'),
            subtitle: Text('環境構築公式の英語ドキュメント.'),
            onTap: () => launch('https://flutter.dev/docs/get-started/install/macos'),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.trending_up, color: theme.primaryIconTheme.color,),
              title: Text("開発役立ち", style: TextStyle(color: theme.secondaryHeaderColor),),
            ),
            decoration: BoxDecoration(color: theme.primaryColor,),
          ),
          ListTile(
            title: Text('DevTools'),
            subtitle: Text('開発ツールごとのツールの使い方.'),
            onTap: () => launch('https://flutter.dev/docs/development/tools/devtools'),
          ),
          ListTile(
            title: Text('Dart packages'),
            subtitle: Text('サードパーティ制パッケージを検索できる.'),
            onTap: () => launch('https://pub.dev/'),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.code, color: theme.primaryIconTheme.color,),
              title: Text("Dart言語", style: TextStyle(color: theme.secondaryHeaderColor),),
            ),
            decoration: BoxDecoration(color: theme.primaryColor,),
          ),
          ListTile(
            title: Text('Dart公式'),
            subtitle: Text('Dart公式サイト.サンプルが豊富.'),
            onTap: () => launch('https://dart.dev/'),
          ),
          ListTile(
            title: Text('DartPad'),
            subtitle: Text('ちょっとしたプログラムを動かすのに便利.'),
            onTap: () => launch('https://dartpad.dev/'),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.widgets, color: theme.primaryIconTheme.color,),
              title: Text("Flutterフレームワーク", style: TextStyle(color: theme.secondaryHeaderColor),),
            ),
            decoration: BoxDecoration(color: theme.primaryColor,),
          ),
          ListTile(
            title: Text('Flutter公式'),
            subtitle: Text('英語ドキュメント.'),
            onTap: () => launch('https://flutter.dev/'),
          ),
          ListTile(
            title: Text('Flutter翻訳'),
            subtitle: Text('日本語ドキュメント.'),
            onTap: () => launch('https://flutter.ctrnost.com/'),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.color_lens, color: theme.primaryIconTheme.color,),
              title: Text("デザイン", style: TextStyle(color: theme.secondaryHeaderColor),),
            ),
            decoration: BoxDecoration(color: theme.primaryColor,),
          ),
          ListTile(
            title: Text('Flutter Studio'),
            subtitle: Text('GUIでデザインしてソースコードも見れます.'),
            onTap: () => launch('https://flutterstudio.app/'),
          ),
          ListTile(
            title: Text('Widget catalog'),
            subtitle: Text('公式でサポートされているウィジェット.'),
            onTap: () => launch('https://flutter.dev/docs/development/ui/widgets'),
          ),
          ListTile(
            title: Text('Flutter Gallery'),
            subtitle: Text('デモとコードを確認できます.'),
            onTap: () => launch('https://gallery.flutter.dev/'),
          ),
          ListTile(
            title: Text('Material Icons'),
            subtitle: Text('マテリアルアイコン一覧.'),
            onTap: () => launch('https://api.flutter.dev/flutter/material/Icons-class.html'),
          ),
          ListTile(
            title: Text('Panache'),
            subtitle: Text('Theme自動生成'),
            onTap: () => launch('https://rxlabz.github.io/panache/'),
          ),
        ],
      ),
    );
  }

}