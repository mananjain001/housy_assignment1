import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'MainScreen.dart';
import 'MenuScreen.dart';

class Homepage extends StatelessWidget {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        clipMainScreen: true,
        controller: _drawerController,
        disableGesture: true,
        style: DrawerStyle.Style1,
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        mainScreenScale: 0,
        borderRadius: 25.0,
        angle: 0.0,
        showShadow: true,
        backgroundColor: Colors.grey[300],
        slideWidth: MediaQuery.of(context).size.width *
            (ZoomDrawer.isRTL() ? .45 : 0.65),
      ),
    );
  }
}
