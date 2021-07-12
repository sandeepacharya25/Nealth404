import 'package:flutter/material.dart';

import '../colorComponent.dart';

class ButtonContainer extends StatefulWidget {
  const ButtonContainer({Key? key, required this.title, required this.onClick}) : super(key: key);
  final String title;
  final Function onClick;

  @override
  _ButtonContainerState createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: textInsideContainer),
          ),
        ),
      ),
      onTap: ()=>widget.onClick(),
    );
  }
}