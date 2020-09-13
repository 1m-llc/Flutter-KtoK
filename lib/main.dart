import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:flutter_ktok/presentation/views/app_component.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider( // ウィジェット全体をProviderでラップ
      create: (_) => AppThemeDataNotifier(),
      child: AppComponent(),
    ),
  );
}

