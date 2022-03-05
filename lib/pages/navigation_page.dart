import 'package:flutter/material.dart';
import 'package:wana_flutter/manage/colors_manage.dart';
import 'package:wana_flutter/pages/home_page.dart';
import 'package:wana_flutter/pages/mine_page.dart';
import 'package:wana_flutter/pages/tree_page.dart';

/// 底部导航栏
class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BottomNavigationPageState();
}

class BottomNavigationPageState extends State<BottomNavigationPage> {
  final PageController _controller = PageController(initialPage: 0);
  final Color _defaultColor = Colors.grey;
  final Color _activeColor = ColorManager.colorPrimary;
  late int _currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          TreePage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: _activeColor,
        unselectedItemColor: _defaultColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _item(Icons.home, "首页"),
          _item(Icons.android, "体系"),
          _item(Icons.account_box_sharp, "我的"),
        ],
      ),
    );
  }

  _item(IconData icon, String title) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _defaultColor),
      activeIcon: Icon(icon, color: _activeColor),
      label: title,
    );
  }
}
