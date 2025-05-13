import 'package:flutter/material.dart';
import 'package:sohail_cv/constants/color.dart';
import 'package:sohail_cv/constants/navlist.dart';
import 'package:sohail_cv/widgets/sitelogo.dart';

class HeaderDeskTop extends StatelessWidget {
  const HeaderDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, const Color.fromARGB(255, 39, 194, 116)],
        ),
        borderRadius: BorderRadius.circular(40),
      ),

      child: Row(
        children: [
          SiteLogo(onTap: () {}),

          Spacer(),
          for (int i = 0; i < navtitlelist.length; i++)
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navtitlelist[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.scaffoldbg,
                  ),
                ),
              ),
            ),
        ],
      ),
      // color: Colors.blueGrey,
    );
  }
}
