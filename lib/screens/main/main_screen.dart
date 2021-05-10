import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/screens/dashboard/dashboard_screen.dart';

import '../main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen()
            )
          ],
        )
      ),
    );
  }
}
