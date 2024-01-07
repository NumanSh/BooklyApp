import 'package:flutter/material.dart';

import 'customize_app_bar.dart';
import 'customize_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomizeAppBar(),
          CustomizeListViewItem(),
        ],
      ),
    );
  }
}
