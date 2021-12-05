import 'package:bonybom_app/domain/entities/suggestion.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe/swipe.dart';

class SuggestionsView extends StatelessWidget {
  final List<Suggestion> suggestions;
  SuggestionsView({Key? key, required this.suggestions}) : super(key: key);

  var _svgIcon = new SvgIcn();
  String _message = 'Swipe your screen';
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: s.width / 18, bottom: s.width / 38),
      child: Column(
        children: [
          Swipe(
            child: Padding(
              padding: EdgeInsets.only(top: s.height / 15, left: s.width / 15, right: s.width / 15),
              child: Container(
                child: Text(suggestions.length.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    )),
                height: s.height / 1.8,
                width: s.width,
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              ),
            ),
            onSwipeUp: () {},
            onSwipeDown: () {
              // setState(() {
              //   _message = 'Swiping down';
              // });
            },
            onSwipeLeft: () {
              // setState(() {
              //   _message = 'Swiping left';
              // });
            },
            onSwipeRight: () {
              // setState(() {
              //   _message = 'Swiping right';
              // });
            },
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.only(top: s.width / 8),
              child: Container(
                height: s.width / 6,
                width: s.width / 1.18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: s.width / 15, left: s.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(onTap: () {}, child: _svgIcon.file),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.dislike),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.bookmark),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.like),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: SizedBox(height: s.width / 13, child: _svgIcon.diamond)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
