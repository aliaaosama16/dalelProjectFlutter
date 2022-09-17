import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
