import 'package:bonybom_app/models/category_model.dart';
import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialCategory extends StatefulWidget {
  @override
  _SpecialCategoryState createState() => _SpecialCategoryState();

  CategoryModel banaOzel =
      CategoryModel(id: "1", image: "edebiyat.jpg", created_at: "10/11/2021");

  CategoryModel haftaninEnleri = CategoryModel(
      id: "2", image: "online_para_kazanma.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori1 =
      CategoryModel(id: "3", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori2 =
      CategoryModel(id: "4", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori3 =
      CategoryModel(id: "5", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori4 =
      CategoryModel(id: "6", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori5 =
      CategoryModel(id: "7", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori6 =
      CategoryModel(id: "8", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori7 =
      CategoryModel(id: "9", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori8 = CategoryModel(
      id: "10", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori9 = CategoryModel(
      id: "11", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori10 = CategoryModel(
      id: "12", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori11 = CategoryModel(
      id: "13", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori12 = CategoryModel(
      id: "14", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori13 = CategoryModel(
      id: "15", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori14 = CategoryModel(
      id: "16", image: "gastronomi.jpg", created_at: "10/11/2021");

  CategoryModel denemeKategori15 = CategoryModel(
      id: "17", image: "gastronomi.jpg", created_at: "10/11/2021");

  List<CategoryModel> denemeKategoyListeme = [];

  List<CategoryModel> ozelKategori = [];
}

class _SpecialCategoryState extends State<SpecialCategory> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<CategoryModel>> tumDenemeleriGoster() async {
    widget.denemeKategoyListeme.add(widget.denemeKategori1);
    widget.denemeKategoyListeme.add(widget.denemeKategori2);
    widget.denemeKategoyListeme.add(widget.denemeKategori3);
    widget.denemeKategoyListeme.add(widget.denemeKategori4);
    widget.denemeKategoyListeme.add(widget.denemeKategori5);
    widget.denemeKategoyListeme.add(widget.denemeKategori6);
    widget.denemeKategoyListeme.add(widget.denemeKategori7);
    widget.denemeKategoyListeme.add(widget.denemeKategori8);
    widget.denemeKategoyListeme.add(widget.denemeKategori9);
    widget.denemeKategoyListeme.add(widget.denemeKategori10);
    widget.denemeKategoyListeme.add(widget.denemeKategori11);
    widget.denemeKategoyListeme.add(widget.denemeKategori12);
    widget.denemeKategoyListeme.add(widget.denemeKategori13);
    widget.denemeKategoyListeme.add(widget.denemeKategori14);
    widget.denemeKategoyListeme.add(widget.denemeKategori15);

    return widget.denemeKategoyListeme;
  }

  Future<List<CategoryModel>> ozelKategoriGoster() async {
    widget.ozelKategori.add(widget.banaOzel);
    widget.ozelKategori.add(widget.haftaninEnleri);

    return widget.ozelKategori;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    var sh = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icons/Logo.png",
                      width: sw / 12,
                      height: sw / 12,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      icon: Icon(
                        Icons.person_outline,
                        size: sw / 10,
                      )),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            "Özel Kategorini Seç",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Sadece seçtiğin kategorilerden içerikler görünür",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FutureBuilder<List<CategoryModel>>(
                        future: ozelKategoriGoster(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            var specialCategoriList = snapshot.data;
                            return GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 15 / 11),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: specialCategoriList!.length,
                              itemBuilder: (context, indekx) {
                                var ozelCategori = specialCategoriList[indekx];
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black.withOpacity(0.3),
                                              BlendMode.darken),
                                          image: AssetImage(
                                              "assets/images/kategori/${ozelCategori.image}"),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                );
                              },
                            );
                          } else {
                            return Center();
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.only(right: 195),
                      child: Text(
                        "Diğer Kategoriler",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: FutureBuilder<List<CategoryModel>>(
                            future: tumDenemeleriGoster(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                var ozelKategori = snapshot.data;
                                return GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          childAspectRatio: 15 / 14),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: ozelKategori!.length,
                                  itemBuilder: (context, indeks) {
                                    var ozel = ozelKategori[indeks];
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 10, left: 10, bottom: 10),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  colorFilter: ColorFilter.mode(
                                                      Colors.black
                                                          .withOpacity(0.3),
                                                      BlendMode.darken),
                                                  image: AssetImage(
                                                      "assets/images/kategori/${ozel.image}"),
                                                  fit: BoxFit.fill,
                                                )),
                                              ),
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                      right:
                                                          Radius.circular(21),
                                                      left:
                                                          Radius.circular(21)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Center();
                              }
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
