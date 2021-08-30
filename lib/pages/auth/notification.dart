import 'package:bonybom_app/pages/auth/Profile.dart';
import 'package:bonybom_app/pages/auth/notification_pages/favorites.dart';
import 'package:bonybom_app/pages/auth/notification_pages/recorded.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    final s = MediaQuery.of(context).size;

    return new MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(s.width / 3.5),
            child: Expanded(
              child: new Container(
                color: Colors.grey.shade200,
                child: new SafeArea(
                  child: Column(
                    children: <Widget>[
                      new Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(31),
                                  bottomRight: Radius.circular(31)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 30),
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Profile()));
                                    },
                                    icon: Icon(
                                      Icons.home_outlined,
                                      size: s.width / 10,
                                    )),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icons/Logo.png",
                                    width: s.width / 12,
                                    height: s.width / 12,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Profile()));
                                    },
                                    icon: Icon(
                                      Icons.person_outline,
                                      size: s.width / 10,
                                    )),
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
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade900,
                                fontSize: 19,
                              ),
                            ),
                            new Text(
                              "Beğenilenler",
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade900,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
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
