import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class LunchScreenSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("スプラッシュ画面設定"),),
      body: SourceCodeView(
        filePath: 'lib/example/lunch_screen_setup_ex.md',
      ),
    );
  }
}