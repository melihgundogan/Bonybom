import 'package:bonybom_app/models/favorites_modul.dart';
import 'package:flutter/material.dart';

class recordedPage extends StatefulWidget {
  const recordedPage({Key? key}) : super(key: key);

  @override
  _recordedPageState createState() => _recordedPageState();
}

class _recordedPageState extends State<recordedPage> {
  var favorite_1 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 1",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_2 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 2",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_3 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 3",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_4 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 4",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_5 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 5",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_6 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 6",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_7 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 7",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_8 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 8",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  var favorite_9 = Favorites_modul(
      favorite_text: "Deneme texti  lorem impus test 9",
      favorite_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
      favorite_subText: "Netflix");

  List<Favorites_modul> favoriListesi = [];

  @override
  void initState() {
    favoriListesi.add(favorite_1);
    favoriListesi.add(favorite_2);
    favoriListesi.add(favorite_3);
    favoriListesi.add(favorite_4);
    favoriListesi.add(favorite_5);
    favoriListesi.add(favorite_6);
    favoriListesi.add(favorite_7);
    favoriListesi.add(favorite_8);
    favoriListesi.add(favorite_9);
  }

  Future<List<Favorites_modul>> favorileriGetir() async {
    return favoriListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<Favorites_modul>>(
          future: favorileriGetir(),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              var favoriteList = snaphot.data;
              return Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 4 / 1.12),
                  shrinkWrap: true,
                  itemCount: favoriteList!.length,
                  itemBuilder: (context, indeks) {
                    var favorite = favoriteList[indeks];
                    return Container(
                      child: new Card(
                        shadowColor: Colors.black,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25, right: 5),
                                      child: Text(
                                        favorite.favorite_text,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Text(
                                      favorite.favorite_subText,
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.notifications_outlined,
                                    color: Colors.grey.shade700,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.grey.shade700,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 15, top: 5, bottom: 5),
                              height: 90,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      favorite.favorite_imgUrl,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return Center();
            }
          },
        )
      ],
    );
  }
}
