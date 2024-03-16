import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uukow/pages/homePages.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                0.2,
                0.7
              ],
                  colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.85),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Kusoo dhawaaw Uukow Data Service Ka dirso Applicationkaan Inta Lacag ee aad u baahantahay Adiga oo lagugu soo Balayo Internet Xawaare sare leh",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400,
                        fontSize: 10, // Adjust the font size as needed
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 255, 255, 255),
                )),
                child: Text('Get Started'), // Add a child widget here
              ),
              Gap(46),
            ],
          ),
        ),
      ),
    );
  }
}
