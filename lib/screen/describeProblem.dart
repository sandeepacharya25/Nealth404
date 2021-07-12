import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/model/symptom.dart';


class DescribeProblem extends StatefulWidget {
  const DescribeProblem({ Key? key, required this.symptom }) : super(key: key);
  final Symptom symptom;

  @override
  _DescribeProblemState createState() => _DescribeProblemState();
}

class _DescribeProblemState extends State<DescribeProblem> {
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
        title: Text("Details",
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
        ),
        elevation: 10,
        backgroundColor:primaryColor,
        shadowColor: primaryColor,
      ),
      body: Padding(
        padding:EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(widget.symptom.possibleDiseases,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
                
              ),
              SizedBox(height: 20,),
              customContainer("Symptoms",widget.symptom.nameOfSymptom.toString()),
              SizedBox(height: 10,),
              customContainer("Preventive Measures", widget.symptom.preventive),
              SizedBox(height: 10,),
              customContainer("Hospitals", widget.symptom.hospital.toString()),
              SizedBox(height: 10,),
              customContainer("Doctors", widget.symptom.doctor),
            ],
          ),
        ),
      ),
    );
  }
   Widget customContainer(String title,String description){
    return Container(
      padding:EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(8),
      ),
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
        style:  GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}