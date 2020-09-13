import 'package:flutter/material.dart';
import 'package:flutter_ktok/domain/providers/app_theme_data_notifier.dart';
import 'package:provider/provider.dart';

class AboutKtoKPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppThemeDataNotifier>(context);

    return Scaffold(
      appBar: AppBar(title: Text('About KtoK'),),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('KtoK', style: TextStyle(fontSize: 24.0),),
            Text('（Kenon to Kilia）', style: TextStyle(fontSize: 18.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white70,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Kenon : 0  to  Killa : 1,000', style: TextStyle(fontSize: 16.0),),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }

}