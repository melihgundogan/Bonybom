import 'package:bonybom_app/models/category_model.dart';
import 'package:bonybom_app/source/response_notifier.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OtherCategoryPage extends StatelessWidget {
  const OtherCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final _cat = Provider.of<CategoryNotifier>(context, listen: false);
    _cat.getCategories();
    return Consumer(
        builder: (_, CategoryNotifier categoryState, Widget? child) {
      if (categoryState.loading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Container(
          width: s.height,
          height: s.height,
          child: Container(
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
        );
      }
    });
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
                    item.title_tr,
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
