import 'package:flutter/material.dart';

import 'customize_app_bar.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomizeAppBar(),
          FeatureBookListView(),
        ],
      ),
    );
  }
}
