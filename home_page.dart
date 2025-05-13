import 'package:flutter/material.dart';

import 'package:sohail_cv/constants/color.dart';
import 'package:sohail_cv/constants/desktopscreensize.dart';
import 'package:sohail_cv/widgets/desktop.dart';
import 'package:sohail_cv/widgets/drawer.dart';
import 'package:sohail_cv/widgets/header_desktop.dart';
import 'package:sohail_cv/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // Media query:
    // final screenSize = MediaQuery.of(context).size;
    // final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldbg,
          endDrawer: constraints.maxWidth >= deskTop ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //main
              if (constraints.maxWidth >= deskTop)
                const HeaderDeskTop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              Maindesktop(),

              SizedBox(
                height: 500,
                width: double.maxFinite,
                // color: Colors.blueGrey,
              ),
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}
