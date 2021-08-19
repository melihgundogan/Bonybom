import 'package:bonybom_app/models/category_model.dart';
import 'package:bonybom_app/pages/auth/info.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/response_notifier.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widgets.dart';

class CategorySelect extends StatefulWidget {
  const CategorySelect({Key? key}) : super(key: key);

  @override
  _CategorySelectState createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    final _cat = Provider.of<CategoryNotifier>(context, listen: false);
    _cat.getCategories();
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.black,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                width: s.width,
                height: s.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/AutgBg.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Consumer(
                builder: (_, CategoryNotifier categoryState, Widget? child) {
              if (categoryState.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                  width: s.width,
                  height: s.height,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: hh(context, 74)),
                        Image.asset(
                          "assets/icons/Logo.png",
                          width: ww(context, 38.13),
                          height: hh(context, 52.65),
                        ),
                        SizedBox(height: hh(context, 28.46)),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: ww(context, 32)),
                          child: Text(
                            "Seni daha iyi tanıyabilmemiz ve sana özel önerilerde bulunabilmemiz için aşağıdan en az 4 kategori seç.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: hh(context, 17),
                              fontWeight: FontWeight.w500,
                              color: Clr.white,
                              letterSpacing: 1.2,
                              height: 1.2,
                            ),
                          ),
                        ),
                        SizedBox(height: hh(context, 28.46)),
                        Container(
                          width: s.width,
                          padding: EdgeInsets.symmetric(
                            horizontal: ww(context, 30),
                          ),
                          child: Wrap(
                            spacing: ww(context, 16),
                            runSpacing: ww(context, 16),
                            children: categoryState.categories.map((e) {
                              return CategoryWidget(
                                s: s,
                                item: e,
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: hh(context, 80)),
                      ],
                    ),
                  ),
                );
              }
            }),
            Positioned(
              bottom: ww(context, 25),
              right: ww(context, 25),
              child: MaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                height: hh(context, 48),
                color: Clr.mainBlue,
                child: Icon(
                  Icons.chevron_right,
                  color: Clr.bgDark,
                  size: ww(context, 30),
                ),
              ),
            ),
          ],
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

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ww(context, 20)),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          print(item.kategoriAdi);
        },
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
                    item.kategoriAdi,
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
              image: NetworkImage(
                item.kategoriResmi,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
