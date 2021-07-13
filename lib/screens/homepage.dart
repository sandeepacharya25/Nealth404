import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hackathon/components/buttonContainer.dart';

import 'package:hackathon/components/hospitalContainer.dart';
import 'package:hackathon/components/speciallistCard.dart';
import 'package:hackathon/models/doctor.dart';
import 'package:hackathon/models/hospitals.dart';

import 'package:hackathon/models/symptom.dart';
import 'package:hackathon/screens/availableHospitals.dart';
import 'package:hackathon/screens/availableMedicialSpeciallist.dart';
import 'package:hackathon/screens/commonProblem.dart';
import 'package:hackathon/screens/describeProblem.dart';
import 'package:hackathon/screens/descriptionOfHospitals.dart';
import 'package:hackathon/screens/pharmacy.dart';

import 'detailForMedicialSpeciallist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List ourFeature = [
    'Book Appointment for Hospital Visit (OPD)',
    'Check Bed In the Hospital',
    'Our Pharmacy',
    'Check Hospitals'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Text("Emergency"),
      //   icon: Icon(
      //     Icons.local_hospital,
      //   ),
      //   backgroundColor: Colors.red,
      // ),
      
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.select_all),
                        onPressed: () {},
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "       LOCATION",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                            text: "\nBirtamode, Jhapa",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/profile.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Good Morning, Olivia",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "How Are You Today?",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search Symptom",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search))
                      ],
                    ),
                  ),
                  onTap: () {
                    showSearch(context: context, delegate: SearchSymptom());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Some Comman Problem",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SomeCommon()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),

                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        commonProblemContainer(context, symptoms()[0], 0),
                        SizedBox(
                          width: 20,
                        ),
                        commonProblemContainer(context, symptoms()[1], 1),
                        SizedBox(
                          width: 20,
                        ),
                        commonProblemContainer(context, symptoms()[2], 2),
                        SizedBox(
                          width: 20,
                        ),
                        commonProblemContainer(context, symptoms()[3], 3),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Take Video Consultation With Doctor Now",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                        onPressed: () {},
                        fillColor: Colors.green,
                        // elevation: 5,

                        child: Text(
                          "Call Now",
                          style: GoogleFonts.poppins(color: Colors.white),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    RawMaterialButton(
                        onPressed: () {},
                        fillColor: Colors.blue,
                        child: Text(
                          "Schedule",
                          style: GoogleFonts.poppins(color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Some of Our feature",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 2),
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ButtonContainer(
                    //this is on the same page
                    title: ourFeature[index],
                    onClick: () {
                      if (index == 0) {}
                      if (index == 2) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Pharmacy()));
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Medicial Speciallist",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                AvailableMedicialSpeciallist()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpeciallistCard(
                        doctor: doctors()[0],
                        onCLick: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsForMedicialSpeciallist(
                                      doctor: doctors()[0],
                                    ))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SpeciallistCard(
                        doctor: doctors()[1],
                        onCLick: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsForMedicialSpeciallist(
                                      doctor: doctors()[1],
                                    ))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SpeciallistCard(
                        doctor: doctors()[2],
                        onCLick: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsForMedicialSpeciallist(
                                      doctor: doctors()[2],
                                    ))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Hospital And Clinics",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AvailableHospital()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 15,),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (builder, index) => HospitalContainer(
                          hospital: hospitals()[index],
                          onClick: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DescriptionOfHospital(hospital: hospitals()[index]))),
                        )),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget commonProblemContainer(
      BuildContext context, Symptom symptom, int index) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(symptom.possibleDiseases),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DescribeProblem(symptom: symptoms()[index])));
      },
    );
  }
}

class SearchSymptom extends SearchDelegate {
  int i = 0;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    
    return DescribeProblem(symptom: symptoms()[i]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Symptom> suggestionList = query.isEmpty
        ? symptoms()
        : symptoms().where((p) => p.nameOfSymptom.startsWith(query)).toList();

    return suggestionList.isEmpty
        ? Text(
            'No result Found....',
            style: TextStyle(fontSize: 20, color: Colors.black),
          )
        : ListView.builder(
            // itemCount: ,
            itemBuilder: (context, index) {
              final Symptom listitem = suggestionList[index];
              return Card(
                
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    showResults(context);
                    i = index;
                  },
                
              contentPadding: EdgeInsets.all(8),
                  title: Text(listitem.nameOfSymptom.toString()),
              
                  // title: RichText(
                  //   text: TextSpan(
                  //     text:listitem.nameOfSymptom.substring(0,query.length),
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //     children: [
                  //       TextSpan(
                  //         text: listitem.medicineName.substring(query.length),
                  //         style: TextStyle(
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ),
              );
            },
            itemCount: suggestionList.length,
          );
  }
}
