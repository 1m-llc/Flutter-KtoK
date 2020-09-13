import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:provider/provider.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class ThemeDataChangePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThemeDataChangePage();
  }
}

class _ThemeDataChangePage extends State<ThemeDataChangePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  final _tabWidgets = [
    Tab(text: "切替スイッチ", ),
    Tab(text: "Code", ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabWidgets.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppThemeDataNotifier>(context);

    final _tabContentWidgets = [
      Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(100.0),
            ),
            Center(
              child: Text("Light ⇆ Dark ThemeDataを切り替えます."),
            ),
            Switch.adaptive(
              value: theme.isDark,
              onChanged: (_) {
                theme.changeThemeData();
              },
            ),
          ],
        ),
      ),
      SourceCodeView(filePath: 'lib/example/theme_data_change_page_ex.dart',),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Test"),
        bottom: TabBar(
          tabs: _tabWidgets,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabContentWidgets,
      ),
    );
  }
}