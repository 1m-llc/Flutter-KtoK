import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:provider/provider.dart';
import 'package:widget_with_codeview/source_code_view.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TODO"),),
      body: Center(child: Text("TODO"),)
    );
  }
}