import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.call,
              size: 150,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Call Page',
            style: GoogleFonts.acme(
              fontSize: 24,
              color: Color.fromARGB(255, 0, 2, 126),
            ),
          ),
        ],
      ),
    );
  }
}
