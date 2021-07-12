import 'package:flutter/material.dart';
import 'dataSearch.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
              padding: EdgeInsets.all(8.0),
              height: 40.0,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search your medicine",
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            onTap: (){
              showSearch(context: context, delegate: DataSearch());
            },
    );
  }
}