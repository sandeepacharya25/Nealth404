import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/model/doctor.dart';


class SpeciallistCard extends StatefulWidget {
  const SpeciallistCard({ Key? key,required this.doctor  }) : super(key: key);
  final Doctor doctor;

  @override
  _SpeciallistCardState createState() => _SpeciallistCardState();
}

class _SpeciallistCardState extends State<SpeciallistCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}