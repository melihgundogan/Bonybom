import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/pages/auth/userpages/userpage.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({ Key? key }) : super(key: key);

  @override
  _MoreOptionsState createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    var sh = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: EdgeInsets.only(top: sw / 12, bottom: sw / 40),
          child: Column(
            children: [
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
                                
                                    GestureDetector(onTap: () {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  userPage()));}, child: _svgIcon.home),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icons/Logo.png",
                                    width: sw/ 12,
                                    height: sw / 12,
                                  ),
                                ),
                                GestureDetector(onTap: () {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  userPage()));}, child: _svgIcon.profile),
                              ],
                            ),
                          ),
                        ),
                      ),
              Padding(
                padding:  EdgeInsets.only(top:sw/4,bottom: sw/6),
                child: Text("DAHA FAZLA HAK ELDE ET!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700,fontSize: sw/20),),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}