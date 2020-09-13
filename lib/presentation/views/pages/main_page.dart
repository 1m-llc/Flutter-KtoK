import 'package:flutter/material.dart';
import 'package:flutter_ktok/presentation/views/pages/design_tips/link_collection_page.dart';
import 'package:flutter_ktok/presentation/views/widgets/drawer_widget.dart';
import 'package:flutter_ktok/presentation/views/widgets/entry_item.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  final _tabWidgets = [
    Tab(icon: Icon(Icons.code),),
    Tab(icon: Icon(Icons.link),),
  ];

  final _tabContentWidgets = [
    ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index], context),
      itemCount: data.length,
    ),
    LinkCollectionPage(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabWidgets.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter KtoK"),
        bottom: TabBar(
          tabs: _tabWidgets,
          controller: _tabController,
        ),
      ),
      drawer: Drawer(
        child: DrawerListWidget(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabContentWidgets,
      ),
    );
  }
}

