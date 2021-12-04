import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/coustom_app_bar.dart';
import '../../../core/widgets/index.dart' as core_widgets;
import '../../../enums.dart';
import '../../../injection_container.dart';
import '../../../source/icons.dart';
import '../controller/index.dart';
import 'suggestions_view.dart';

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
      create: (_) => sl<HomeCubit>()..getSuggestions(),
      child: Scaffold(
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
          body: buildBody(context)),
    );
  }

  Widget buildBody(context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () => core_widgets.LoadingWidget(),
          loading: () => core_widgets.LoadingWidget(),
          suggesstionsLoaded: (suggestions) => SuggestionsView(suggestions: suggestions),
          suggestionsNotLoaded: (failure) => Container(),
        );
      },
    );
  }

  MaterialApp buildMaterialApp(Size s) {
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
          body: buildBody(context)),
    );
  }
}
