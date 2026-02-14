// ignore_for_file: deprecated_member_use, unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BadLayout(),
  ));
}

class BadLayout extends StatelessWidget {
  const BadLayout({super.key});
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
          const Color.fromARGB(196, 249, 241, 232), 
          const Color(0xFFE5D4B8),
          const Color.fromARGB(202, 217, 191, 160),
        ],
      ),
    ),
    child: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: width,
                height: 280,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                          "BRAWL!", 
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        ),
                    
                    const SizedBox(height: 15),
                    FittedBox(
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Gemini_Generated_Image_d4juj0d4juj0d4ju.png",
                          width: width * 0.6,),
                          Image.asset("assets/Gemini_Generated_Image_yrffvhyrffvhyrff.png",
                          width: width * 0.6,)
                          ,]
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: width,
                constraints: BoxConstraints(minHeight: height * 0.55),
                padding: const EdgeInsets.all(20),
                color: const Color(0xFF2C1B11).withOpacity(0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        border: Border(right: BorderSide(color: Color(0xFFD4AF37), width: 5)),
                      ),
                      child: const Text(
                        "BOUNTY MISSIONS",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(  // Wrong widget - should be Column
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
                    const SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2C1B11),
                          foregroundColor: const Color(0xFFD4AF37),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          elevation: 5,
                        ),
                        onPressed: () {},
                        child: const Text(
                      "Select a Map",
                      style: TextStyle(
                        fontSize: 28,
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
                      ),
                    ),
                    const SizedBox(height: 15),
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
      width: screenWidth *1.5,
      padding: const EdgeInsets.all(8),
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
              Icon(Icons.flag, color: Color(0xFF8B4513), size: 14),
              SizedBox(width: 6),
              Text(
                'MISSION',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B4513),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 3),
          Text(
            description,
            style: TextStyle(fontSize: 8),
          ),
          SizedBox(height: 6),
          LinearProgressIndicator(
            value: progress / 100,
            backgroundColor: Color(0xFFD2B48C),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8B4513)),
          ),
          SizedBox(height: 3),
          Text(
            '$progress%',
            style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
