import 'package:flutter/material.dart';
import 'package:hackathon/model/hospitals.dart';


class HospitalContainer extends StatefulWidget {
  const HospitalContainer({ Key? key, required this.hospital }) : super(key: key);
  final Hospital hospital;

  @override
  _HospitalContainerState createState() => _HospitalContainerState();
}

class _HospitalContainerState extends State<HospitalContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}