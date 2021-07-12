import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildList extends StatefulWidget {
  const BuildList({ Key? key, required this.title, 
  required this.index, required this.sub,
  required this.onDelete,
  }) : super(key: key);
  final String title;
  final int index;
  final String sub;
  final Function onDelete;

  @override
  _BuildListState createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    return Card (
      elevation: 5.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(widget.title,
            style: GoogleFonts.poppins(
                fontSize:20,
                fontWeight: FontWeight.w300,
                color: Colors.black
              ),
            ),
            ListTile(
              title: Text(widget.sub,
              style: GoogleFonts.poppins(
                fontSize:15,
                fontWeight: FontWeight.w300,
              ),
              ),
              trailing: IconButton(onPressed:()=> widget.onDelete(), 
              icon: Icon(Icons.delete_forever)),
            ),
          ],
        ),
      ),
    );
  }
}