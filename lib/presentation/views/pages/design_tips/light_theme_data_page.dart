import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class LightThemeDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LightThemeDataサンプル"),),
      body: SourceCodeView(
        filePath: 'lib/example/lignt_theme_data_ex.dart',
      ),
    );
  }
}