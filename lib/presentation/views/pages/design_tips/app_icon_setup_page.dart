import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class AppIconSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("アプリアイコン設定"),),
      body: SourceCodeView(
        filePath: 'lib/example/app_icon_setup_ex.md',
      ),
    );
  }
}