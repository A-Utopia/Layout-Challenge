// ignore_for_file: deprecated_member_use, unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CorrectLayout(),
  ));
}

class CorrectLayout extends StatelessWidget {
  const CorrectLayout({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 245, 220),
        body: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color.fromARGB(196, 249, 241, 232),  // Off-white
          const Color(0xFFE5D4B8),  // Warm tan
          const Color.fromARGB(202, 217, 191, 160),  // Deeper tan
        ],
      ),
    ),
    child: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: width,
                decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("assets/Gemini_Generated_Image_6p1mc06p1mc06p1m.png"),
                      fit: BoxFit.cover, 
                       ),
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF2C1B11), 
                      width: 2, 
                      style: BorderStyle.solid
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Select a Map",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        shadows: [
                          Shadow(
                            offset: const Offset(3, 3),
                            blurRadius: 5,
                            color: Colors.black,
                          ),
                        ],
                        fontFamily: "PICKYSIDE GRUNGE",
                        color: Color.fromARGB(255, 29, 17, 10),
                      ),
                    ),
                    const SizedBox(height: 05),
                    FittedBox(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Gemini_Generated_Image_d4juj0d4juj0d4ju.png",
                          width: width,),
                          Image.asset("assets/Gemini_Generated_Image_yrffvhyrffvhyrff.png",
                          width: width,)
                          ,]
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: width,
                constraints: BoxConstraints(minHeight: height * 0.6),
                padding: const EdgeInsets.all(25),
                color: const Color(0xFF2C1B11).withOpacity(0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        border: Border(left: BorderSide(color: Color(0xFFD4AF37), width: 5)),
                      ),
                      child: const Text(
                        "BOUNTY MISSIONS",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(  // Replace ListView with Column
                        children: [
                          _buildMissionCard("Scout the area", 
                          "Find the lost weapn", 
                          69,width),
                          _buildMissionCard("Kill Ugly", 
                          "The Uglies of them all", 
                          67,width),
                          _buildMissionCard("Train of death", 
                          "Stop the train and kill the boss", 
                          99,width),
                          _buildMissionCard("Kill Them All", 
                          "Eliminate all targets in the area", 
                          1,width),
                        ],
                      ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2C1B11),
                          foregroundColor: const Color(0xFFD4AF37),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          elevation: 5,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "BRAWL!", 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Bottom padding for scroll
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }


}


  Widget _buildMissionCard(String title, String description, int progress, double screenWidth) {

    return Container(
      width: screenWidth ,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFFAF0E6),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFCD853F), width: 2),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 8,
            color: Colors.black26,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.flag, color: Color(0xFF8B4513), size: 16),
              SizedBox(width: 6),
              Text(
                'MISSION',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B4513),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 9),
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress / 100,
            backgroundColor: Color(0xFFD2B48C),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8B4513)),
          ),
          SizedBox(height: 4),
          Text(
            '$progress%',
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }