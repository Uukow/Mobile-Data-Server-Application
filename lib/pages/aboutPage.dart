import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uukow/const.dart';

class AboutPage extends StatelessWidget {
  final List<String> Mylist = [
    'Dollar to Internet Data Exchange: We facilitate the seamless exchange of dollars for Internet data, ensuring you have access to the connectivity you need.',
    'Currency Conversion to Prepaid Cards: We provide the convenience of converting your money into EVCPlus or Edahab prepaid cards, enabling you to communicate effectively within your community through various telecommunications networks.',
    'Connectivity Solutions: We offer a range of connectivity solutions tailored to meet your specific needs, including internet data plans and prepaid communication packages.',
    'Connectivity Solutions: We offer a range of connectivity solutions tailored to meet your specific needs, including internet data plans and prepaid communication packages.',
    'Secure Transactions: We prioritize the security and privacy of our customers transactions, ensuring a safe and reliable exchange process at all times.',
    'Transparent Pricing: We believe in transparent pricing and strive to offer competitive rates for all our services, ensuring you get the best value for your money.',
    'Customer Satisfaction: We are committed to delivering exceptional customer satisfaction, continuously striving to exceed your expectations and provide you with the best possible experience.',
  ];

  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Image.asset(
                    "assets/images/2.jpg",
                    height: 50,
                    width: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "About Company",
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
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Welcome to our company, where we specialize in simplifying the process of exchanging dollars for Internet data. In addition to this service, we also provide the convenience of converting your currency into EVCPlus or Edahab prepaid cards. These cards empower you to seamlessly connect with your community through the telecommunications infrastructure of the country, including networks such as Hormuud, Somnet, and Somnet.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Let us take care of all the intricacies involved in these transactions. Whether you need Internet data or prepaid communication solutions, we've got you covered. Feel free to get in touch with us at any time, as our services are available 24 hours a day.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "Our Services",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      450, // Adjust height as needed
                  child: ListView.builder(
                    shrinkWrap: true, // Add this line
                    itemCount: Mylist.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: Text(
                          (index).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue, // Customize color as needed
                          ),
                        ),
                        title: Text('${Mylist[index]} '),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "Vision and Mission",
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
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align items to the left
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 39, 0, 105), // Background color
                          borderRadius: BorderRadius.circular(
                              8), // Optional: Add border radius
                        ),
                        padding: EdgeInsets.all(8), // Adjust padding as needed
                        child: Icon(
                          Icons.visibility,
                          color: Colors.white, // Foreground color
                          size: 80, // Adjust icon size as needed
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Vision",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 39, 0, 105),
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Text(
                  "Let us take care of all the intricacies involved in these transactions. Whether you need Internet data or prepaid communication solutions, we've got you covered. Feel free to get in touch with us at any time, as our services are available 24 hours a day.",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
                Gap(20),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align items to the left
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 39, 0, 105), // Background color
                          borderRadius: BorderRadius.circular(
                              8), // Optional: Add border radius
                        ),
                        padding: EdgeInsets.all(8), // Adjust padding as needed
                        child: Icon(
                          Icons.ads_click,
                          color: Colors.white, // Foreground color
                          size: 80, // Adjust icon size as needed
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Mission",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 39, 0, 105),
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Text(
                  "Our mission is to provide accessible and reliable solutions for communication and connectivity. We aim to achieve this by offering convenient and secure exchanges of dollars for Internet data and prepaid cards. Through our services, we strive to enhance connectivity within communities, bridging gaps and fostering meaningful interactions. We are committed to operating with integrity, transparency, and efficiency, ensuring that our customers receive the best possible experience at all times.",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
              ],
            ),
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
