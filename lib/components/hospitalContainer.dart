import 'package:flutter/material.dart';
import 'package:hackathon/models/hospitals.dart';

class HospitalContainer extends StatefulWidget {
  const HospitalContainer({ Key? key, required this.hospital, required this.onClick }) : super(key: key);
  final Hospital hospital;
  final Function onClick;

  @override
  _HospitalContainerState createState() => _HospitalContainerState();
}

class _HospitalContainerState extends State<HospitalContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 2,
        child: ListTile(
          contentPadding: EdgeInsets.all(5),
          leading: Image(image: AssetImage(widget.hospital.imageUrl),
          width: 50,
          ),
        
          title: Text(widget.hospital.name),
          subtitle: Text(widget.hospital.location,
          style: TextStyle(
            color: Colors.grey,
          ),
          ),
        ),
      ),
      onTap: ()=>widget.onClick(),
    );
  }
}