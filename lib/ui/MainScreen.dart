import 'package:flutter/material.dart';
import 'package:housy_assignment1/widgets/CustomAppBar.dart';
import 'package:housy_assignment1/widgets/CustomGridViewTile.dart';
import 'package:housy_assignment1/widgets/CustomImageView.dart';
import 'package:housy_assignment1/widgets/CustomListTileWithCaption.dart';
import 'package:housy_assignment1/widgets/GridViewTiles.dart';

import '../util/Constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _controller = ScrollController();
  final key = GlobalKey();
  Offset positionActiveProjects;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox box = key.currentContext.findRenderObject();
      positionActiveProjects = box.localToGlobal(Offset.zero);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: Colors.yellow.shade600,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade600,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomImageView(),
                            Column(
                              children: [
                                Text(
                                  'Manan Jain',
                                  style: kBoldTextStyle.copyWith(fontSize: 36),
                                ),
                                Text(
                                  'App Developer',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey.shade500,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Tasks',
                        style: kBoldTextStyle.copyWith(fontSize: 28),
                      ),
                      FloatingActionButton(
                          child: Icon(Icons.calendar_today),
                          onPressed: () async {
                            await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now());
                          }),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomListTileWithSubtitle(
                      title: "To Do",
                      icon: Icons.alarm,
                      subtitle: "5 tasks now. 1 started",
                      color: Colors.red.shade700,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        _controller.animateTo(positionActiveProjects.dy - 100,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: CustomListTileWithSubtitle(
                        title: "In Progress",
                        icon: Icons.access_time_rounded,
                        subtitle: "1 tasks now. 1 started",
                        color: Colors.amber.shade200,
                      ),
                    ),
                    CustomListTileWithSubtitle(
                      title: "Done ",
                      icon: Icons.check_circle_outline,
                      subtitle: "18 tasks now. 13 started",
                      color: Colors.purple.shade200,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text(
                    'Active Projects',
                    key: key,
                    style: kBoldTextStyle.copyWith(fontSize: 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2),
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    shrinkWrap: true,
                    children: GridViewTiles(),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
