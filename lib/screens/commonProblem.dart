import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/models/symptom.dart';
import 'package:hackathon/screens/describeProblem.dart';

class SomeCommon extends StatefulWidget {
  const SomeCommon({ Key? key }) : super(key: key);

  @override
  _SomeCommonState createState() => _SomeCommonState();
}

class _SomeCommonState extends State<SomeCommon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: ()=>Navigator.pop(context),
        ),
        title: Text("Common Problem",
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
        child:ListView.builder(
          itemCount: symptoms().length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index)=>problemBlock(symptoms()[index],index))
      )
    
    );
  }
  Widget problemBlock(Symptom symptom,int index){
    return Container(
      padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width*0.45,
              child: Card(
                
                elevation: 3,
                child: Center(
                  child: ListTile(
                    
                    title: Text(symptom.possibleDiseases),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DescribeProblem(symptom: symptoms()[index],)));
                    },
                  ),
                ),
              ),
            );
  }
}