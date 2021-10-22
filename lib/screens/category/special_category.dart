import 'package:bonybom_app/models/category_model.dart';
import 'package:bonybom_app/screens/notification/notification.dart';
import 'package:bonybom_app/screens/category/other_categorys.dart';
import 'package:bonybom_app/screens/category/to_you.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:bonybom_app/source/response_notifier.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpecialCategory extends StatefulWidget {
  @override
  _SpecialCategoryState createState() => _SpecialCategoryState();

  CategoryModel banaOzel = CategoryModel(
      id: "1",
      image: "edebiyat.jpg",
      created_at: "10/11/2021",
      title_en: '',
      title_tr: '');

  CategoryModel haftaninEnleri = CategoryModel(
      id: "2",
      image: "online_para_kazanma.jpg",
      created_at: "10/11/2021",
      title_en: '',
      title_tr: '');

  List<CategoryModel> denemeKategoyListeme = [];
}

class _SpecialCategoryState extends State<SpecialCategory> {
  List<CategoryModel> digerKategoriler = [];
  List<CategoryModel> ozelKategori = [];

  Future<List<CategoryModel>> digerKategorilerGoster() async {
    digerKategoriler = await CategoryNotifier().getCategories();

    return digerKategoriler;
  }

  Future<List<CategoryModel>> ozelKategoriGoster() async {
    ozelKategori.add(widget.banaOzel);
    ozelKategori.add(widget.haftaninEnleri);

    return ozelKategori;
  }

  final String baseUrl = "https://bonybom.com/admin/";
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    /*final text = MediaQuery.of(context).platformBrightness == Brightness.dark
      ? 'DarkTheme'
      : 'LightTheme';*/
    final _cat = Provider.of<CategoryNotifier>(context, listen: false);
    final s = MediaQuery.of(context).size;
    var sw = s.width;
    var sh = s.height;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
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
                                  builder: (context) => NotificationPage()));
                        },
                        child: _svgIcon.home),
                    GestureDetector(
                      onTap: () {},
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
                                  builder: (context) => NotificationPage()));
                        },
                        child: _svgIcon.profile),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  print("basıldı");
                },
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: (s.width - ww(context, 92)) / 1.9,
                          height: ((s.width - ww(context, 92)) / 3) * 4 / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/kategori/dans.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: (s.width - ww(context, 92)) / 3,
                            padding: EdgeInsets.only(
                              left: ww(context, 10),
                              right: ww(context, 10),
                              bottom: ww(context, 10),
                            ),
                            child: Text(
                              "Bana Özel",
                              style: TextStyle(
                                fontSize: hh(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Clr.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: (s.width - ww(context, 92)) / 1.9,
                          height: ((s.width - ww(context, 92)) / 3) * 4 / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/kategori/kitap.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: (s.width - ww(context, 92)) / 3,
                            padding: EdgeInsets.only(
                              left: ww(context, 10),
                              right: ww(context, 10),
                              bottom: ww(context, 10),
                            ),
                            child: Text(
                              "Haftanın Enleri",
                              style: TextStyle(
                                fontSize: hh(context, 11),
                                fontWeight: FontWeight.w600,
                                color: Clr.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
              OtherCategoryPage()
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.s,
    required this.item,
  }) : super(key: key);

  final Size s;
  final CategoryModel item;
  final String baseUrl = "https://bonybom.com/admin/";

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ww(context, 20)),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: () {},
        child: Container(
          width: (s.width - ww(context, 92)) / 3,
          height: ((s.width - ww(context, 92)) / 3) * 4 / 3,
          child: Stack(
            children: [
              Container(
                width: (s.width - ww(context, 92)) / 3,
                height: ((s.width - ww(context, 92)) / 3) * 4 / 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Clr.bgDark,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: (s.width - ww(context, 92)) / 3,
                  padding: EdgeInsets.only(
                    left: ww(context, 10),
                    right: ww(context, 10),
                    bottom: ww(context, 10),
                  ),
                  child: Text(
                    baseUrl + item.title_tr,
                    style: TextStyle(
                      fontSize: hh(context, 11),
                      fontWeight: FontWeight.w600,
                      color: Clr.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: item.image == null
                  ? NetworkImage("")
                  : NetworkImage(
                      baseUrl + item.image,
                    ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
