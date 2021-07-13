import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/models/personalcare.dart';
import 'package:hackathon/screens/detailsOfProducts.dart';

class ProductsOfPersonalCare extends StatefulWidget {
  // const ProductsOfPersonalCare({ Key? key, required this.personalCare }) : super(key: key);
  // final PersonalCare personalCare;

  @override
  _ProductsOfPersonalCareState createState() => _ProductsOfPersonalCareState();
}

class _ProductsOfPersonalCareState extends State<ProductsOfPersonalCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Personal Care",
      
        style: GoogleFonts.poppins(
          color:Colors.white,
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: personalCare().length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index)=> buildList(personalCare()[index],
            ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsOfProducts(personalCare: personalCare()[index])))
            ),
            ),
        ),
      ),
    );
  }
  Widget buildList(PersonalCare personal,Function onClick){
    return InkWell(
      child: Card(
        elevation: 5,
        child: ListTile(
          
          leading: Image(
            image: AssetImage(personal.imageUrl),
            width: 50,
            fit: BoxFit.cover,
          ),
          title: Text(personal.name),
          subtitle: Text(personal.price),
        ),
      ),
      onTap:()=> onClick(),
    );
  }
}