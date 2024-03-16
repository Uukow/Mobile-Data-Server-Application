import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uukow/pages/homePages.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.2, 0.7],
                  colors: [
                    Color.fromARGB(255, 39, 0, 105).withOpacity(0.90),
                    Color.fromARGB(255, 39, 0, 105).withOpacity(0.90),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Container(
                    child: Image.asset(
                      "assets/images/uukow.png",
                      width: 150,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "UUKOW ADVERTISING AGENCY",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "Welcome to Uukow Advertisement Company, where we craft compelling narratives and dynamic strategies to elevate your business in the digital realm. As a leading social media marketing agency, we specialize in cultivating your online presence and connecting you with your target audience effectively.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Our Services",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
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
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Adjust color as needed
                    ),
                  ),
                  NumberedList(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _makePhoneCall('0615031623');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        child: Icon(Icons.call),
                      ),
                      Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          _launchWhatsApp();
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        child: Icon(Icons.sms),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to launch WhatsApp with a predefined message
  _launchWhatsApp() async {
    // The custom WhatsApp link
    String whatsappLink = 'https://wa.link/1gxd14';

    // Checking if the URL can be launched
    if (await canLaunch(whatsappLink)) {
      // Launching the WhatsApp app
      await launch(whatsappLink);
    } else {
      // Display an error message if the URL cannot be launched
      throw 'Could not launch $whatsappLink';
    }
  }
}

class NumberedList extends StatelessWidget {
  final List<String> items = [
    'Social Media Strategy: Tailored plans to amplify your online impact.',
    'Content Creation: Engaging and relevant content that captivates your audience',
    'Social Media Advertising: Targeted campaigns to boost your brand visibility.',
    'Community Management: Building meaningful connections with your audience.',
    'Social Analytics: Data-driven insights for informed decision-making.',
    'Digital Marketing: Comprehensive solutions to enhance your online footprint.',
    'Public Relations and Event Marketing: Strategic approaches to showcase your brand.',
    'Email Marketing: Direct and personalized communication with your audience.',
    'Web Design and Development: Crafting visually appealing and user-friendly websites tailored to your brand.',
    'Application Development (Android and iOS): Building custom mobile applications to meet your specific needs and reach your target audience.',
    'System Development: Creating robust and scalable systems to streamline your business processes and improve efficiency.',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            (index + 1).toString(),
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
          ), // Display the index as the number
          title: Text(
            items[index],
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
          ),
        );
      },
    );
  }
}

_makePhoneCall(String phoneNumber) async {
  AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    data: 'tel:$phoneNumber',
  );
  await intent.launch();
}
