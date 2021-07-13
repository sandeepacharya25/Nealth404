import 'package:flutter/material.dart';

import '../colorComponent.dart';

class CategoriesButton extends StatefulWidget {
  const CategoriesButton({ Key? key, required this.title, required this.imageUrl, required this.onClick }) : super(key: key);
  final String title;
  final String imageUrl;
  final Function onClick;

  @override
  _CategoriesButtonState createState() => _CategoriesButtonState();
}

class _CategoriesButtonState extends State<CategoriesButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        
        child: Column(
          children: [
            CircleAvatar(
                    backgroundImage:AssetImage(widget.imageUrl),
                    radius: 35.0,
                  ),
                  Text(widget.title,
                  style: TextStyle(
                    color: textColor
                  ),
                  ),
          ],
        ),
      ),
      onTap: ()=>widget.onClick(),
    );
  }
}