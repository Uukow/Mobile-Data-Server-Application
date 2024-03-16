import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:android_intent_plus/android_intent.dart';

class Home extends StatelessWidget {
  String _getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 9) {
      return 'Subax Wanaagsan';
    } else if (hour < 12) {
      return 'Barqo Wanaagsan';
    } else if (hour < 18) {
      return 'Galab Wanaagsan';
    } else {
      return 'Habeen Wanaagsan';
    }
  }

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          automaticallyImplyLeading: false, // Remove the back arrow
          elevation: 4,
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          flexibleSpace: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salaama",
                      style: GoogleFonts.poppins(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _getGreeting(),
                      style: GoogleFonts.poppins(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  "assets/images/logo.png", // Replace with your logo image path
                  width: 150, // Adjust size as needed
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Uukow Data!",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Gap(12),
                          Text(
                            "Empower your finances with our innovative currency exchange app! Convert your dollars seamlessly into valuable internet data",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Colors.white),
                          ),
                          Gap(12),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.deepPurple,
                            ),
                            onPressed: () {
                              _makePhoneCall('0615555498');
                            },
                            child: Text("CALL ME"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/images/ads.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Gap(0.5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Basics",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: const Color.fromARGB(255, 39, 0, 105),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 140.0, right: 140.0, top: 0, bottom: 20),
              child: Divider(
                height: 3,
                thickness: 2,
                color: const Color.fromARGB(
                    255, 39, 0, 105), // Adjust color as needed
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*025#',
                    '\$ 0.25\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*05#',
                    '\$ 0.5\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*075#',
                    '\$ 0.75\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*1#',
                    '\$ 1\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*2#',
                    '\$ 2\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*5#',
                    '\$ 5\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Gap(0.5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Advanced",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: const Color.fromARGB(255, 39, 0, 105),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 140.0, right: 140.0, top: 0, bottom: 20),
              child: Divider(
                height: 3,
                thickness: 2,
                color: const Color.fromARGB(
                    255, 39, 0, 105), // Adjust color as needed
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*10#',
                    '\$ 10\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*15#',
                    '\$ 15\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*18#',
                    '\$ 18\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*20#',
                    '\$ 20\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*27#',
                    '\$ 27\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*30#',
                    '\$ 30\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Gap(0.5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Gold",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: const Color.fromARGB(255, 39, 0, 105),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 140.0, right: 140.0, top: 0, bottom: 20),
              child: Divider(
                height: 3,
                thickness: 2,
                color: const Color.fromARGB(
                    255, 39, 0, 105), // Adjust color as needed
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*50#',
                    '\$ 50\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*60#',
                    '\$ 60\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*70#',
                    '\$ 70\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*80#',
                    '\$ 80\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*90#',
                    '\$ 90\nHada dalbo hada hel',
                  ),
                ),
                Expanded(
                  child: _buildPhoneNumberContainer(
                    '*712*615555498*100#',
                    '\$ 100\nHada dalbo hada hel',
                  ),
                ),
              ],
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Center(
                child: Text(
                  "Applicationkaan waxaa Sameeyey Abdulkadir Uukow",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: Color.fromARGB(255, 40, 0, 109),
                  ),
                ),
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 39, 0, 105),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  _makePhoneCall('0615031623');
                },
                child: Text("Ila soo xiriir si aan kugu sameeyo"),
              ),
            ),
            Gap(30),
          ],
        ),
      ),
    );
  }

  Widget _buildPhoneNumberContainer(String phoneNumber, String text) {
    List<String> textParts = text.split('\n');
    return GestureDetector(
      onTap: () {
        _makePhoneCall(phoneNumber);
      },
      child: Container(
        margin: EdgeInsets.all(15),
        height: 90,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textParts[0], // First part of the text
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4), // Add space between lines
              Text(
                textParts[1], // Second part of the text
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white, // Change the color for the second line
                  fontWeight: FontWeight.w200,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _makePhoneCall(String phoneNumber) async {
    AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      data: 'tel:$phoneNumber',
    );
    await intent.launch();
  }
}
