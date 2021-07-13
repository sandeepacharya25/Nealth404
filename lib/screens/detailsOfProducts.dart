import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/buyItems.dart';
import 'package:hackathon/models/personalcare.dart';

class DetailsOfProducts extends StatefulWidget {
  const DetailsOfProducts({ Key? key, required this.personalCare }) : super(key: key);
  final PersonalCare personalCare;

  @override
  _DetailsOfProductsState createState() => _DetailsOfProductsState();
}

class _DetailsOfProductsState extends State<DetailsOfProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Details",
        style: GoogleFonts.poppins(
          color:Colors.black
        ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back_ios,
        color: Colors.black,
        )
        ),
        backgroundColor: primaryColor,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image(image: AssetImage(widget.personalCare.imageUrl),
                    width: 100,
                    fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10,),
              Text(widget.personalCare.name,
              style: GoogleFonts.poppins(
                fontWeight:FontWeight.w400
              ),
              ),
              SizedBox(height: 10,),
              Text(widget.personalCare.price),
                  ],
                ),
              ),
              
              BuyItems(),
              SizedBox(height: 20,),
              Text(widget.personalCare.description,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300
              ),
              ),
              SizedBox(height: 10,),
              Container(
              height: 10,
                color: Colors.grey[200],
              ),
              SizedBox(height: 10,),
              Text(widget.personalCare.productDetails,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}