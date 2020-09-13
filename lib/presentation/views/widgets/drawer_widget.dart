import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:flutter_ktok/presentation/navigations/routes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_ktok/presentation/constants/constants.dart';

/// Drawerの下のListView
class DrawerListWidget extends StatelessWidget {
  const DrawerListWidget({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerList = Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          DrawerHeaderWidget(),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Github'),
            onTap: () {
              launch(ONEM_GITHUB_URL);
            },
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('1M LLC'),
            onTap: () {
              launch(ONEM_HOMEPAGE_URL);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About KtoK'),
            onTap: () {
              Application.router.navigateTo(context, '/about_ktok', transition: TransitionType.material);
            },
          ),
        ],
      ),
    );
    return drawerList;
  }
}

/// DrawerHeaderのウィジェット.上記ウィジェットのヘッダー.
class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
//      decoration: BoxDecoration(color: ThemeData.light().primaryColor),
      accountName: Text("わんえむ君"),
      accountEmail: Text("info@one-m.jp"),
      currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/one-m.png"), radius: 40.0,)
    );
    return drawerHeader;
  }
}

