import 'package:flutter/material.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/buttonContainer.dart';
import 'package:hackathon/components/categoriesButton.dart';
import 'package:hackathon/components/login.dart';
import 'package:hackathon/components/search_bar.dart';
import 'package:hackathon/screens/findmedicine.dart';
import 'package:hackathon/screens/medicineReminder.dart';
import 'package:hackathon/screens/setPrescription.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> containerTitle = [
      'FIND\nMEDICINES',
      'SET\nPRESCRIPTION',
      'NOTE OF\nMEDICINE',
      'MEDICINE\nREMINDER'
    ];
    
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: SearchBar(),
        
        actions: [
         Login(),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                      color: textColor,
                      decoration: TextDecoration.underline,
                      fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoriesButton(
                      title: "Personal\n   Care",
                      imageUrl: 'images/personalcare.jpg',
                    ),
                    CategoriesButton(
                      title: 'Wellness\n& Fitness',
                      imageUrl: 'images/fitness.jpg',
                    ),
                    CategoriesButton(
                      title: "Family\n  Care",
                      imageUrl: "images/familycare.jpg",
                    ),
                    CategoriesButton(
                      title: "Ayurvedic",
                      imageUrl: "images/ayurvedic.jpg",
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2
                  ),
                  itemCount: 4,

                  shrinkWrap: true,
                  itemBuilder: (context,index)=>ButtonContainer(//this is on the same page
                  title: containerTitle[index],
                  onClick: (){
                    if(containerTitle[index]=='FIND\nMEDICINES'){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindMedicine(),
                    ),
                    );
                    }
                    if(containerTitle[index]=='SET\nPRESCRIPTION'){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SetPrescription(),
                    ),
                    );
                    }
                    // if(containerTitle[index]=='FIND\nMEDICINES'){
                    //    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindMedicine(),
                    // ),
                    // );
                    // }
                    if(containerTitle[index]=='MEDICINE\nREMINDER'){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MedicineReminder(),
                    ),
                    );
                    }
                   
                  },
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


