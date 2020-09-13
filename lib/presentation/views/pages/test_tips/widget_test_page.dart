import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class WidgetTestPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _WidgetTestPage();
  }
}

class _WidgetTestPage extends State<WidgetTestPage> with SingleTickerProviderStateMixin {

  final _tabWidgets = [
    Tab(text: "実行方法", ),
    Tab(text: "mywidget_test.dart", ),
  ];

  final _tabContentWidgets = [
    SourceCodeView(filePath: 'lib/example/widget_test_exe_ex.md',),
    SourceCodeView(filePath: 'lib/example/widget_test_ex.dart',),
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
        title: Text("Widget Test"),
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