import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/model/doctor.dart';


class DetailsForMedicialSpeciallist extends StatefulWidget {
  const DetailsForMedicialSpeciallist({ Key? key, required this.doctor }) : super(key: key);
  final Doctor doctor;

  @override
  _DetailsForMedicialSpeciallistState createState() => _DetailsForMedicialSpeciallistState();
}

class _DetailsForMedicialSpeciallistState extends State<DetailsForMedicialSpeciallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: ()=>Navigator.pop(context),
        ),
        title: Text(widget.doctor.name,
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
        ),
        elevation: 10,
        backgroundColor:primaryColor,
        shadowColor: primaryColor,
      ),
      
    );
  }
}