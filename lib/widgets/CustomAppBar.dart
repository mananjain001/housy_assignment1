import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<CustomAppBar> {
  bool isDrawerOpen = false;
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: !isSearching
            ? [
                IconButton(
                    icon: Icon(isDrawerOpen ? Icons.close : Icons.dehaze,
                        color: Colors.black),
                    onPressed: () {
                      setState(() {
                        isDrawerOpen
                            ? ZoomDrawer.of(context).close()
                            : ZoomDrawer.of(context).open();
                        isDrawerOpen = !isDrawerOpen;
                      });
                    }),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isSearching = !isSearching;
                      });
                    })
              ]
            : [
                Expanded(
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            isSearching = !isSearching;
                          });
                        },
                      ),
                      focusColor: Colors.black,
                      border: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
