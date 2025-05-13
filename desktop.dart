import 'package:flutter/material.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: screenSize.height / 1.8,
      constraints: BoxConstraints(minHeight: 250),
      // height: 300,
      // width: double.maxFinite,
      color: const Color.fromARGB(255, 116, 167, 111),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Hi,\n I am Sohail Saleem\n A Flutter Develper ",
                style: TextStyle(
                  fontSize: 15,
                  height: 1.2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Get in touch",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
          Image.asset("assets/laptop.png", width: screenWidth / 3),
        ],
      ),
    );
  }
}
