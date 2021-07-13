import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyItems extends StatefulWidget {
  const BuyItems({ Key? key }) : super(key: key);

  @override
  _BuyItemsState createState() => _BuyItemsState();
}

class _BuyItemsState extends State<BuyItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 108,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: IconButton(onPressed: (){}, 
                          icon: Icon(Icons.remove,
                          color: Colors.black,
                          ),
                          ),
                          backgroundColor: Colors.grey[200],
                          radius: 20,
                        ),
                        SizedBox(width: 10,),
                        Text("1"),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          child: IconButton(onPressed: (){}, 
                          icon: Icon(Icons.add,
                          color: Colors.black,
                          ),
                          ),
                          backgroundColor: Colors.grey[200],
                          radius: 20,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(onPressed: (){}, 
                  color: Colors.green,
                  child: Text("ADD TO CART",
                  style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                  ),
                  ),
                  MaterialButton(onPressed: (){}, 
                  color: Colors.teal,
                  child: Text("BUY",
                  style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                  ),
                  ),
                ],
              );
  }
}