import 'package:flutter/material.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/search_bar.dart';
import 'package:hackathon/models/medicine.dart';
import 'package:hackathon/screens/descriptionofMedicine.dart';

class FindMedicine extends StatefulWidget {
  @override
  _FindMedicineState createState() => _FindMedicineState();
}

class _FindMedicineState extends State<FindMedicine> {
  late final String searchmedicine;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: textInsideContainer,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Find Medicine",
          style: TextStyle(color: textInsideContainer, fontSize: 20.0),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 2.0,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                color: appBarColor,
                child: Center(
                  child: SearchBar(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(8.0),
                  itemCount: medicineInfo().length,
                  itemBuilder: (context, index) => MedicineList(
                        medicine: medicineInfo()[index],
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Description(medicine: medicineInfo()[index])));
                        },
                      ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}

class MedicineList extends StatefulWidget {
  const MedicineList({Key? key, required this.medicine, required this.onTap}) : super(key: key);
  final Medicine medicine;
  final Function onTap;

  @override
  _MedicineListState createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.teal),
            borderRadius: BorderRadius.circular(8.0)),
        child: ListTile(
          leading: Image(
            image: AssetImage(widget.medicine.imageUrl),
            width: 100.0,
          ),
          title: Text(
            widget.medicine.medicineName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            widget.medicine.price,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),

          onTap: ()=>widget.onTap(),
        ),
      ),
    );
  }
}
