import 'package:flutter/material.dart';
import 'package:wana_flutter/manage/colors_manage.dart';
import 'package:wana_flutter/pages/navigation_page.dart';

/// 欢迎页面
/// 跳转到主页面，加载数据
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WelcomeState();
}

class WelcomeState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    initHomePage();
  }

  initHomePage() async {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      Future.delayed(const Duration(microseconds: 5 * 1000), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return const BottomNavigationPage();
        }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: ColorManager.colorPrimary,
      child: Image.asset(
        "images/ic_logo.png",
        fit: BoxFit.fill,
        // width: MediaQuery.of(context).size.width,
        height: 80,
        width: 100,
      ),
    );
  }
}
