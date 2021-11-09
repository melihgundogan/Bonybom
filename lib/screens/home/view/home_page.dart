import 'package:bonybom_app/screens/home/viewmodel/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe/swipe.dart';

import '../../../components/coustom_app_bar.dart';
import '../../../enums.dart';
import '../../../source/icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _svgIcon = new SvgIcn();
  String _message = 'Swipe your screen';
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => HomePageCubit()..fetchSuggestions(),
      child: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return buildMaterialApp(s, state);
        },
      ),
    );
  }

  MaterialApp buildMaterialApp(Size s, HomePageState state) {
    return new MaterialApp(
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
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: EdgeInsets.only(top: s.width / 18, bottom: s.width / 38),
          child: Column(
            children: [
              BlocConsumer<HomePageCubit, HomePageState>(
                listener: (context, state) {},
                builder: (context, state) {
                  print(state);
                  if (state is SuggestionsLoadingState) {
                    return CircularProgressIndicator();
                  } else if (state is SuggestionsLoadedState) {
                    return Swipe(
                      child: Padding(
                        padding: EdgeInsets.only(top: s.height / 15, left: s.width / 15, right: s.width / 15),
                        child: Container(
                          child: Text(state.suggestions.length.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              )),
                          height: s.height / 1.8,
                          width: s.width,
                          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      onSwipeUp: () {
                        setState(() {
                          _message = 'Swiping up';
                        });
                      },
                      onSwipeDown: () {
                        setState(() {
                          _message = 'Swiping down';
                        });
                      },
                      onSwipeLeft: () {
                        setState(() {
                          _message = 'Swiping left';
                        });
                      },
                      onSwipeRight: () {
                        setState(() {
                          _message = 'Swiping right';
                        });
                      },
                    );
                  }
                  return Container();
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
        ),
      ),
    );
  }
}
