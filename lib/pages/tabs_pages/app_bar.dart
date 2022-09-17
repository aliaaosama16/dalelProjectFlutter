import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class PageAppBar extends StatelessWidget {
  final String title;
  const PageAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: false,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: primaryColor,
        ),
      ),
    );
  }
}
