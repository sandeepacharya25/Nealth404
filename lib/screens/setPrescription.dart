import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/buildList.dart';

class SetPrescription extends StatefulWidget {
  const SetPrescription({Key? key}) : super(key: key);

  @override
  _SetPrescriptionState createState() => _SetPrescriptionState();
}

class _SetPrescriptionState extends State<SetPrescription> {
  List medicineList = [];
  String yourMed = '';
  List nameList = [];
  String name = '';
  @override
  Widget build(BuildContext context) {
    void showalertdialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text("Add Medicine"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Name Of The Person",
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  onChanged: (String val) {
                    name = val;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Add Medicine',
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  onChanged: (String val) {
                    yourMed = val;
                  },
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        nameList.add(name);
                        medicineList.add(yourMed);
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Add"),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: textInsideContainer,
        ),
        title: Text("Set Prescription"),
        backgroundColor: appBarColor,
      ),
      body: medicineList.isEmpty || nameList.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "You can save a medicine prescription here along with name of person",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          : SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: medicineList.length,
                        itemBuilder: (builder, index) => BuildList(
                          title: nameList[index],
                          index: index,
                          sub: medicineList[index],
                          onDelete: () {
                            setState(() {
                              medicineList.removeAt(index);
                              nameList.removeAt(index);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {
          showalertdialog();
        },
      ),
    );
  }
}
