import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/hospitalContainer.dart';
import 'package:hackathon/models/hospitals.dart';
import 'package:hackathon/screens/descriptionOfHospitals.dart';

class AvailableHospital extends StatefulWidget {
  const AvailableHospital({ Key? key }) : super(key: key);

  @override
  _AvailableHospitalState createState() => _AvailableHospitalState();
}

class _AvailableHospitalState extends State<AvailableHospital> {
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
        title: Text("Available Hospitals and Clinics",
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
        ),
        elevation: 10,
        backgroundColor:primaryColor,
        shadowColor: primaryColor,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: hospitals().length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index)=>HospitalContainer(hospital: hospitals()[index],
            
            onClick:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DescriptionOfHospital(hospital: hospitals()[index]))),
            )
            ),
        ),
      ),
      
    );
  }
}