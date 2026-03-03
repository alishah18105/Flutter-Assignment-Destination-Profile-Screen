import 'package:assignment_7/customIconsWidget.dart';
import 'package:assignment_7/imageSectionWidget.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B1C2D),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E293B),
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
        actions: [
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 10),
        ],
        title: Center(
          child: const Text(
            'Destination Profile',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageSection(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIcons(icon: Icons.location_on, label: "120 km"),
                CustomIcons(icon: Icons.timer_sharp, label: "2.5 hrs"),
                CustomIcons(icon: Icons.money, label: "\$45.00"),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),
                  Text(
                    "Experience the heart of the Dolomites. Lago di Braises is one of the most beautiful lakes in South Tyrol, Italy. Famous for its crystal clear emerald waters and the impressive mountain backdrop of the Seekofel",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white30),
                      SizedBox(width: 5),
                      Text(
                        "South Tyrol, Italy",
                        style: TextStyle(color: Colors.white30, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2D6CFF),
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "View Terms and Conditions",
                        style: TextStyle(
                          color: Colors.white30,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
