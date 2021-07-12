import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/speciallistCard.dart';
import 'package:hackathon/models/doctor.dart';
import 'package:hackathon/models/hospitals.dart';
import 'package:hackathon/screens/detailForMedicialSpeciallist.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionOfHospital extends StatefulWidget {
  const DescriptionOfHospital({Key? key, required this.hospital})
      : super(key: key);
  final Hospital hospital;

  @override
  _DescriptionOfHospitalState createState() => _DescriptionOfHospitalState();
}

class _DescriptionOfHospitalState extends State<DescriptionOfHospital> {
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
          widget.hospital.name,
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        elevation: 10,
        backgroundColor: primaryColor,
        shadowColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(widget.hospital.imageUrl),
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.hospital.name,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.hospital.location,
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.hospital.description,
              style: GoogleFonts.poppins(),
            ),
            SizedBox(
              height: 20,
            ),

            Text(
              "Bed Information",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.hospital.beds,
              style: GoogleFonts.poppins(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Phone Number",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 5,),
            Row(
              children: [
                Text(
                  widget.hospital.phoneNumber.toString(),
                  style: GoogleFonts.poppins(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () =>
                      launch("tel://${widget.hospital.phoneNumber}"),
                  icon: Icon(Icons.call),
                ),
              ],
            ),

            Text(
              "Doctor Availables",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),

            GridView.builder(
              itemCount: doctors().length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 200),
              itemBuilder: (context, index) => SpeciallistCard(
                  doctor: doctors()[index],
                  onCLick: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsForMedicialSpeciallist(
                        doctor: doctors()[index],
                      )),))
            )
          ],
        )),
      ),
    );
  }
}
