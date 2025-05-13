import 'package:flutter/material.dart';
import 'package:sohail_cv/constants/navlist.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,

      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsetsDirectional.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              // onTap: () {},
              leading: Icon(navIcons[i]),
              title: Text(navtitlelist[i]),
            ),
        ],
      ),
    );
  }
}
