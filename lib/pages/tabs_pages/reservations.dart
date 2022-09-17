import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class ReservationsPage extends StatelessWidget {
  const ReservationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Text(
          'Reservations',
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
