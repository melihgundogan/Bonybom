import 'package:bonybom_app/pages/auth/home_page.dart';
import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/pages/auth/userpages/userpage.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  var username = "Ali Pek Yılmaz";
  var userMail = "AliPekYılmaz@gmail.com";
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    var sh = screenSize.height;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: sw / 12, bottom: sw / 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: sw / 15, left: sw / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpecialCategory()));
                      },
                      child: _svgIcon.home),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Image.asset(
                      "assets/icons/Logo.png",
                      width: sw / 12,
                      height: sw / 12,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userPage()));
                      },
                      child: _svgIcon.profile),
                ],
              ),
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
                        "HESABIM",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfile()));
                    },
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Ad Soyad",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                      
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Doğum Tarihi",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Cep Telefon Numarası",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfile()));
                    },
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "E-posta",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfile()));
                    },
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Şifre",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfile()));
                    },
                    child: Container(
                      height: sw / 7,
                      padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Konum",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: sw / 10,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: EdgeInsets.only(left: sw / 20, top: sw / 40),
                      child: Text(
                        "HESAP İŞLEMLERİ",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Önbelleği Temizle",
                              style: TextStyle(
                                  fontSize: sw / 20),
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Bize Ulaşın",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Oturumu Kapat",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            
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
                          Padding(
                            padding: EdgeInsets.only(left: sw / 45),
                            child: Text(
                              "Hesabı Sil",
                              style: TextStyle(
                                  fontSize: sw / 20),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                           
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
