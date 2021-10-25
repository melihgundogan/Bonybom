import 'package:bonybom_app/components/coustom_app_bar.dart';
import 'package:bonybom_app/enums.dart';
import 'package:bonybom_app/screens/notification/favorites.dart';
import 'package:bonybom_app/screens/notification/recorded.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  var _svgIcon = new SvgIcn();
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return new MaterialApp(
      color: Colors.grey.shade200,
      debugShowCheckedModeBanner: false,
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            title: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: CustomAppBar(
                  selectedMenu: MenuState.logo,
                )),
          ),
          body: Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: s.width / 20),
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    indicatorPadding: EdgeInsets.zero,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    controller: _tabController,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: const Text(
                          "Kaydedilenler",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: const Text(
                          "Beğenilenler",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      children: [new recordedPage(), new FavoritesPage()],
                      controller: _tabController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
