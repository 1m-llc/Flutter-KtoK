import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/presentation/navigations/routes.dart';

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.context);

  final Entry entry;
  final context;

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }

  Widget _buildTiles(Entry entry) {
    if (entry.children.isEmpty)
      return ListTile(
      title: Text(entry.title),
      onTap: () => Application.router.navigateTo(context, entry.route, transition: TransitionType.material),
    );
    return ExpansionTile(
      key: PageStorageKey<Entry>(entry),
      title: Text(entry.title),
      children: entry.children.map(_buildTiles).toList(),
    );
  }
}

class Entry {
  Entry(this.route, this.title, [this.children = const <Entry>[]]);

  final String route;
  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry('', 'Design Tips',
    <Entry>[
      Entry(Routes.themeDataChangeRoute, 'Light/Dark Mode切替',),
      Entry(Routes.lightThemeDataRoute, 'LightThemeData サンプル',),
      Entry(Routes.darkThemeDataRoute, 'DarkThemeData サンプル',),
      Entry(Routes.appIconSetupRoute, 'App Icon 設定',),
      Entry(Routes.lunchScreenSetupRoute, 'Splash 設定',),
    ],
  ),
  Entry('', 'Test Tips',
    <Entry>[
      Entry('/unit_test', 'Unit Test',),
      Entry('/widget_test', 'Widget Test',),
      Entry('/integration_test', 'Integration Test',),
    ],
  ),
];
