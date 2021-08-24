import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            size: 45,
                          )),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset("assets/icons/Logo.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_outline,
                          size: 45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            color: Colors.grey.shade400,
                            shadowColor: Colors.grey.shade400,
                            child: Text(
                              "Kaydedilenler",
                              style: TextStyle(fontSize: 21),
                            ),
                          ),
                          Card(
                            shadowColor: Colors.grey.shade400,
                            color: Colors.grey.shade400,
                            child: Text(
                              "Beğenilenler",
                              style: TextStyle(fontSize: 21),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 1000,
                    width: 500,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 150,
                                  child: Card(
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Ömer Şirketi açtığında çok yakışıklıyıdı ama niyese çöktü",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              Text("netflix"),
                                              Card(
                                                
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
