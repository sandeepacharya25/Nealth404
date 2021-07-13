import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    List profile=[
      'Upcoming Appointment',
      'Past Appointment',
      'Cancelled Appointment',
      'My Prescriptions',
      'My Medical Record',
      'My Friends & Family',
      'Change Password',
    ];
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("My Profile",
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
        ),
        backgroundColor:primaryColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,
        color: Colors.black,
        )),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.supervised_user_circle_sharp,),
              radius:50,
              
            ),
            Text("Priya Karki",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
            ),
            ),
            Text("98152566452"),
            SizedBox(height:40),
            ListView.builder(
              itemCount: profile.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=>buildListTile(profile[index])),
          ],
        ),
      ),
    );
  }
  Widget buildListTile(String text){
    return ListTile
    (
      title: Text(text,
      style: GoogleFonts.poppins(),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}