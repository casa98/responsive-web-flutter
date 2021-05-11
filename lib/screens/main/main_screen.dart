import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/controllers/MenuController.dart';
import 'package:responsive_web_flutter/responsive.dart';
import 'package:responsive_web_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:provider/provider.dart';

import '../main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Side menu visible for large screens only
            if(Responsive.isDesktop(context))
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
