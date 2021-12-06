import 'package:bonybom_app/core/constants/enums/locale_keys_enum.dart';
import 'package:bonybom_app/core/init/cache/local_manager.dart';
import 'package:bonybom_app/presentation/splash/view/splash.dart';
import 'package:flutter/material.dart';

import '../../components/coustom_app_bar.dart';
import '../../enums.dart';
import '../../source/icons.dart';
import 'clean_up_cache.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  String initValue = "Select your Birth Date";
  bool isDateSelected = false;
  late DateTime birthDate; // instance of DateTime
  late String birthDateInString;
  var username = "Ali Pek Yılmaz";
  var userMail = "AliPekYılmaz@gmail.com";
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                selectedMenu: MenuState.home,
              )),
        ),
        //backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: sw / 25, bottom: sw / 40),
          child: Column(
            children: [
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
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Ad Soyad'),
                          content: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Ad Soyad',
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Text("lkjh"),
                              child: const Text('Kaydet'),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Ad Soyad",
                                style: TextStyle(fontSize: sw / 20),
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
                      onTap: () async {
                        final datePick = await showDatePicker(
                            context: context, initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100));
                        if (datePick != null && datePick != birthDate) {
                          setState(() {
                            birthDate = datePick;
                            isDateSelected = true;
                            birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                          });
                        }
                      },
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Doğum Tarihi",
                                style: TextStyle(fontSize: sw / 20),
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
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Tel.No. '),
                          content: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Tel.No.',
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Text("lkjh"),
                              child: const Text('Kaydet'),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Cep Telefon Numarası",
                                style: TextStyle(fontSize: sw / 20),
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
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('E-posta '),
                          content: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'E-posta',
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Text("lkjh"),
                              child: const Text('Kaydet'),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "E-posta",
                                style: TextStyle(fontSize: sw / 20),
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
                      onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Şifre '),
                          content: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Şifre',
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Text("lkjh"),
                              child: const Text('Kaydet'),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Şifre",
                                style: TextStyle(fontSize: sw / 20),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => editProfile()));
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
                                style: TextStyle(fontSize: sw / 20),
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
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        CounterStorage();
                      },
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Önbelleği Temizle",
                                style: TextStyle(fontSize: sw / 20),
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
                                style: TextStyle(fontSize: sw / 20),
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
                        LocalManager.instance.setBoolValue(PreferencesKeys.IS_LOGGEDIN, false);
                        LocalManager.instance.setStringValue(PreferencesKeys.TOKEN, "");
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SplashView()),
                        );
                      },
                      child: Container(
                        height: sw / 7,
                        padding: EdgeInsets.only(left: sw / 30, right: sw / 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: sw / 45),
                              child: Text(
                                "Oturumu Kapat",
                                style: TextStyle(fontSize: sw / 20),
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
                                style: TextStyle(fontSize: sw / 20),
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
      ),
    );
  }
}
