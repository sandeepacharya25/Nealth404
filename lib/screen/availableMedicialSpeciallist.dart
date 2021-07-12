import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/components/speciallistCard.dart';
import 'package:hackathon/model/doctor.dart';

import '../colorComponent.dart';
import 'detailForMedicialSpeciallist.dart';

class AvailableMedicialSpeciallist extends StatefulWidget {
  const AvailableMedicialSpeciallist({ Key? key }) : super(key: key);

  @override
  _AvailableMedicialSpeciallistState createState() => _AvailableMedicialSpeciallistState();
}

class _AvailableMedicialSpeciallistState extends State<AvailableMedicialSpeciallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: ()=>Navigator.pop(context),
        ),
        title: Text("Available Medicial Speciallist",
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
        ),
        elevation: 10,
        backgroundColor:primaryColor,
        shadowColor: primaryColor,
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 200,
          ), 
          shrinkWrap: true,
          itemCount: doctors().length,
          itemBuilder: (context,index)=>SpeciallistCard(doctor: doctors()[index],
          onCLick:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsForMedicialSpeciallist(doctor: doctors()[index],))),
          ),
          ),
        ),
      ),
    );
  }
}