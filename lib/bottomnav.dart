import 'package:flutter/material.dart';
import 'package:staj_newproject/colors.dart';
import 'package:staj_newproject/drawer.dart';
import 'package:staj_newproject/login/register.dart';
import 'package:staj_newproject/page/cust.dart';
import 'package:staj_newproject/page/homepage.dart';

class bottomnav extends StatefulWidget {
  bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _myTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabViews.values.length,
      child: Scaffold(
        //extendBody: true, yuvarlağın arkasındaki rengi gösteriyor
        extendBody: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_myTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: mytabvieew(),
        ),
        body: tabbar(),
      ),
    );
  }

  TabBar mytabvieew() {
    return TabBar(
        controller: _tabController,
        onTap: (int index) {},
        tabs: _myTabViews.values
            .map((e) => Tab(
                  text: e.name.toString(),
                ))
            .toList());
  }

  TabBarView tabbar() {
    return TabBarView(
        controller: _tabController,
        //physics: NeverScrollableScrollPhysics() ==> yana kaydırarak ekranı değişmeyi iptal eder
        physics: NeverScrollableScrollPhysics(),
        children: [cust(), register(), home(), drawers()]);
  }
}

enum _myTabViews {
  home,

  settings,
  favorite,
  profile,
}

extension _myTabViewsExtension on _myTabViews {}
