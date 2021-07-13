import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodBank extends StatefulWidget {
  const BloodBank({ Key? key }) : super(key: key);

  @override
  _BloodBankState createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {
  @override
  Widget build(BuildContext context) {
    List titleName=[
      'Find Donor',
      'Blood Bank',
      'Request For Blood',
      'Become Donor'
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text("BLOOD BANK",
                style: GoogleFonts.poppins(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
                ),
              ),
              SizedBox(height: 50,),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ), 
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=>customContainer(titleName[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget customContainer(String title){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.red[300],
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}