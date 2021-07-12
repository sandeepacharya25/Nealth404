import 'package:flutter/material.dart';
import 'package:hackathon/models/medicine.dart';
import 'package:hackathon/screens/descriptionofMedicine.dart';

class DataSearch extends SearchDelegate<String> {
   int i=0;
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
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
    // leading icon on the left of the app bar
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
    return Description(medicine: medicineInfo()[i]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   
    final suggestionList = query.isEmpty
        ? medicineInfo()
        : medicineInfo().where((p) => p.medicineName.startsWith(query)).toList();

    return suggestionList.isEmpty?
    Text('No result Found....',style: TextStyle(fontSize: 20,color:Colors.black),):
     ListView.builder(
      itemBuilder: (context, index){
        final Medicine listitem=suggestionList[index];
        return ListTile(
        onTap: (){
          showResults(context);
          i=index;
        },
        leading: Image(image: AssetImage(listitem.imageUrl),
        width: 50.0,
        ),
        title: RichText(
          text: TextSpan(
            text:listitem.medicineName.substring(0,query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: listitem.medicineName.substring(query.length),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      );
    },
      itemCount: suggestionList.length,
    );
  }
}