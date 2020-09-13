import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class IntegrationTestPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _IntegrationTestPage();
  }
}

class _IntegrationTestPage extends State<IntegrationTestPage> with SingleTickerProviderStateMixin {

  final _tabWidgets = [
    Tab(text: "実行方法", ),
    Tab(text: "app", ),
    Tab(text: "app_test", ),
    Tab(text: "i_counter", ),
  ];

  final _tabContentWidgets = [
    SourceCodeView(filePath: 'lib/example/integration_test_exe_ex.md',),
    SourceCodeView(filePath: 'lib/example/integration_test_app_ex.dart',),
    SourceCodeView(filePath: 'lib/example/integration_test_apptest_ex.dart',),
    SourceCodeView(filePath: 'lib/example/integration_test_icounter_ex.dart',),
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabWidgets.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Integration Test"),
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