

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/buyItems.dart';
import 'package:hackathon/models/medicine.dart';

class Description extends StatefulWidget {
  const Description({Key? key, required this.medicine}) : super(key: key);
  final Medicine medicine;

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: textInsideContainer,
          ),
        ),
        title: Text(
          "Details",
          style: TextStyle(color: textInsideContainer),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage("images/amoxicillin.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
             Text(
                widget.medicine.medicineName,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.medicine.price,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20,),
              BuyItems(),
              SizedBox(
                height: 30,
              ),
              customContainer("Basic Information",widget.medicine.basicInfo),
              SizedBox(
                height: 10,
              ),
              customContainer("Therapeutic Uses",widget.medicine.therapeuticUses),
              SizedBox(
                height: 10,
              ),
              customContainer("Warnings and Precautions",widget.medicine.warningsAndPrecaution),
              SizedBox(
                height: 10,
              ),
              customContainer("Interactions",widget.medicine.interaction),
              SizedBox(
                height: 10,
              ),
              customContainer("Directions for Use",widget.medicine.directionUses),
              SizedBox(
                height: 10,
              ),
              customContainer("Side Effects",widget.medicine.sideEffects),
              SizedBox(
                height: 10,
              ),
              customContainer("Storage",widget.medicine.storage),
              SizedBox(
                height: 10,
              ),
              customContainer("Reference",widget.medicine.reference),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget customContainer(String title,String description){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey[50],
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
