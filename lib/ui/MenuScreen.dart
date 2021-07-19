import 'package:flutter/material.dart';
import 'package:housy_assignment1/widgets/CustomListTile.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 48, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/image.jpg')),
                        title: Text(
                          "Manan",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomListTile(
                        title: "Payments",
                        icon: Icons.credit_card,
                      ),
                      CustomListTile(
                        title: "Discounts",
                        icon: Icons.favorite,
                      ),
                      CustomListTile(
                        title: "Notification",
                        icon: Icons.notifications,
                      ),
                      CustomListTile(
                        title: "Orders",
                        icon: Icons.list,
                      ),
                      CustomListTile(
                        title: "Help",
                        icon: Icons.help,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomListTile(
                        title: "Settings",
                        icon: Icons.settings,
                      ),
                      CustomListTile(
                        title: "Support",
                        icon: Icons.headset_mic,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
