import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/models/doctor.dart';

class SpeciallistCard extends StatefulWidget {
  const SpeciallistCard({ Key? key,required this.doctor, required this.onCLick  }) : super(key: key);
  final Doctor doctor;
  final Function onCLick;

  @override
  _SpeciallistCardState createState() => _SpeciallistCardState();
}

class _SpeciallistCardState extends State<SpeciallistCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.doctor.imageUrl),
                radius: 40.0,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.doctor.name,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(widget.doctor.specialist),
              SizedBox(
                height: 5,
              ),
              Text(widget.doctor.qualification),
            ],
          ),
        ),
      ),
      onTap: ()=>widget.onCLick(),
    );
  }
}