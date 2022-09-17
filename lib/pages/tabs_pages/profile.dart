import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
