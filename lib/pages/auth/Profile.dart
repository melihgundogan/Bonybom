import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchKontrol = false;
  var username = "Ali Pek Yılmaz";
  var userMail = "AliPekYılmaz@gmail.com";
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    var sh = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: sw / 18, bottom: sw / 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()));
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      size: sw / 10,
                    )),
                Padding(
                  padding: EdgeInsets.only(right: sw / 10, left: sw / 10),
                  child: Image.asset(
                    "assets/icons/Logo.png",
                    width: sw / 10,
                    height: sw / 10,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_outline,
                      size: sw / 10,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: sw / 25),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: sw / 4.5,
                      width: sw / 4.5,
                      child: ClipRRect(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/profile/profile1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      username,
                      style: TextStyle(fontSize: sw / 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      userMail,
                      style: TextStyle(fontSize: sw / 30),
                    ),
                  ),
                ],
              ),
            ),
            //
            //
            //
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: sw / 10,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: EdgeInsets.only(left: sw / 20, top: sw / 40),
                      child: Text(
                        "AYARLAR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Bildirimler",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.category_outlined,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Kategorileri Düzenle",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: sw / 7,
                    padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                    child: Row(
                      children: [
                        Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: sw / 45),
                          child: Text(
                            "Karanlık Mod",
                            style: TextStyle(
                                fontSize: sw / 20, color: Colors.black),
                          ),
                        ),
                        Spacer(),
                        Switch(
                            value: switchKontrol,
                            activeThumbImage:
                                AssetImage('assets/images/profile/gece.jpg'),
                            inactiveThumbImage:
                                AssetImage('assets/images/profile/gunduz.jpg'),
                            inactiveTrackColor: Colors.amber.shade200,
                            onChanged: (veri) {
                              setState(() {
                                switchKontrol = veri;
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    height: sw / 10,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: EdgeInsets.only(left: sw / 20, top: sw / 40),
                      child: Text(
                        "BONYBOM",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Bonybom'u Arkadaşlarınla Paylaş",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Bize Ulaşın",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/icons/Logo.png"),
                            color: Colors.black,
                            size: sw / 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Bonybom Hakkında",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.privacy_tip_outlined,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Gizlilik Politikası",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.description_outlined,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Kullanım Koşulları",
                              style: TextStyle(
                                  fontSize: sw / 20, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}