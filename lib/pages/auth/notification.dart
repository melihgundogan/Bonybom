import 'package:bonybom_app/pages/auth/notification_pages/favorites.dart';
import 'package:bonybom_app/pages/auth/notification_pages/recorded.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(130),
            child: new Container(
              color: Colors.grey.shade300,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 30),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.home_outlined,
                                  size: 45,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/icons/Logo.png"),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.person_outline,
                                  size: 45,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: new TabBar(
                        tabs: [
                          new Text(
                            "Kaydedilenler",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          new Text(
                            "Beğenilenler",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[new recordedPage(), new FavoritesPage()],
          ),
        ),
      ),
    );
  }
}
