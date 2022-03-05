import 'package:flutter/material.dart';
import 'package:wana_flutter/manage/colors_manage.dart';
import 'package:wana_flutter/manage/platform_manage.dart';
import 'package:wana_flutter/pages/welcome_page.dart';

void main() async {
  runApp(MainApp());
  PlatformManage().android();
}

class MainApp extends StatelessWidget {
  final state = GlobalKey<NavigatorState>();

  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: state,
      theme: ThemeData(
          primaryColor: ColorManager.colorPrimary,
          splashColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      // onGenerateRoute: ,
    );
  }
}
