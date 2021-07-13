import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';

class Emergency extends StatefulWidget {
  const Emergency({ Key? key }) : super(key: key);

  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Emergency",
        style: GoogleFonts.poppins(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(8),
              title: Text("Call Ambulance"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(8),
              title: Text("Call Hospital"),
              trailing: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}