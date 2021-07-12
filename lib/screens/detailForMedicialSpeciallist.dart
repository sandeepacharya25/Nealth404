import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/models/doctor.dart';

class DetailsForMedicialSpeciallist extends StatefulWidget {
  const DetailsForMedicialSpeciallist({Key? key, required this.doctor})
      : super(key: key);
  final Doctor doctor;

  @override
  _DetailsForMedicialSpeciallistState createState() =>
      _DetailsForMedicialSpeciallistState();
}

class _DetailsForMedicialSpeciallistState
    extends State<DetailsForMedicialSpeciallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.doctor.name,
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        elevation: 10,
        backgroundColor: primaryColor,
        shadowColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.doctor.imageUrl),
                      radius: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.doctor.name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.doctor.specialist,
                      style:
                          GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                "Experience",
                style: GoogleFonts.poppins(fontSize: 15),
              ),
              Text(
                widget.doctor.experience,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 1,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Qualification",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              Text(
                widget.doctor.qualification,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 1,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Available",
                style: GoogleFonts.poppins(fontSize: 15),
              ),
              Text(
                widget.doctor.available,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
               Container(
                height: 1,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Available on Hospitals",
              style: GoogleFonts.poppins(
                fontSize: 15
              ),
              ),
              Text(widget.doctor.hospitalName,
              style: GoogleFonts.poppins(
                color: Colors.grey,
              ),
              ),
               Container(
                height: 1,
                color: Colors.teal,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Available for Video Call",
              style: GoogleFonts.poppins(
                fontSize: 15
              ),
              ),
              Text(widget.doctor.timeForVC,
              style: GoogleFonts.poppins(
                color: Colors.grey
              ),
              ),
               Container(
                height: 1,
                color: Colors.teal,
              ),
              SizedBox(
                height:20
              ),
              Text("Book Appointment",
              style: GoogleFonts.poppins(
                fontSize: 15
              ),
              ),
              MaterialButton(onPressed: (){},
              color: Colors.green,
              child: Text("Online Appointment",
              style: GoogleFonts.poppins(
                color:Colors.white
              ),
              ),
              
              ),
              SizedBox(
                height: 10,
              ),
               
                  MaterialButton(onPressed: (){},
                  color: Colors.orange,
                  child: Text("Offline Appointment",
                  style: GoogleFonts.poppins(
                    color:Colors.white
                  ),
                  ),
                  ), 

                  SizedBox(height: 100,)   
                
            ],
          ),
        ),
      ),
    );
  }
}
