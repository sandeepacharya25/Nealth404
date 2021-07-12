import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/colorComponent.dart';
import 'package:hackathon/components/buildList.dart';

class MedicineReminder extends StatefulWidget {
  const MedicineReminder({Key? key}) : super(key: key);

  @override
  _MedicineReminderState createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  late DateTime startPickedDate;
  late DateTime endPickedDate;
  late TimeOfDay time;
  List listOfMedicine = [];
  List listOfTime = [];

  Color check = Colors.blue;

  @override
  void initState() {
    startPickedDate = DateTime.now();
    endPickedDate = DateTime.now();
    time = TimeOfDay.now();
    super.initState();
  }

  String medicineName = '';
  setDate() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(
          "Set Medicine Reminder",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Medicine Name",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                onChanged: (String val) {
                  medicineName = val;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                style: GoogleFonts.poppins(
                    fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Start Date",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              InkWell(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                      '${startPickedDate.month}/${startPickedDate.day}/${startPickedDate.year}'),
                ),
                onTap: () {
                  _sPickDate();
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "End Date",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              InkWell(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                      '${endPickedDate.month}/${endPickedDate.day}/${endPickedDate.year}'),
                ),
                onTap: () {
                  _ePickDate();
                },
              ),
              SizedBox(height: 20),
              // Text("Frequency",
              // style: GoogleFonts.poppins(
              //   fontSize:15,
              // ),
              // ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.grey[100],
              //     borderRadius: BorderRadius.circular(5.0),
              //     border: Border.all(color: Colors.grey),
              //   ),
              //   child:Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       TextButton(
              //         onPressed: (){
              //         setState((){
              //           check=Colors.red;
              //         });
              //       }, child: Text("Every Day",
              //       style: TextStyle(
              //         color: check
              //       ),
              //       )),

              //       TextButton(onPressed: (){}, child: Text("Specific Day")),

              //     ],
              //   )
              // ),

              Text(
                "What Time",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              ListTile(
                title: Text("${time.hour}:${time.minute}"),
                trailing: Icon(Icons.keyboard_arrow_down),
                onTap: () => _pickTime(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          listOfMedicine.add(medicineName);
                          listOfTime.add(time);
                        });
                        Navigator.pop(context);
                      },
                      child: Text("Save")),
                  OutlinedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text("Cancel")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Medicine Reminders",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: textInsideContainer),
          ),
          backgroundColor: appBarColor,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                listOfMedicine.isEmpty
                    ? Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Image(
                            image: AssetImage('images/calender.png'),
                            width: 80.0,
                          ),
                          Text(
                            "Add Reminder",
                            style: GoogleFonts.poppins(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Take your medicines on time\nwith the help of our reminder",
                            style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // addReminderButton(),
                        ],
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: listOfMedicine.length,
                        itemBuilder: (builder, index) => BuildList(
                          title: listOfMedicine[index],
                          index: index,
                          sub: listOfTime[index].toString(),
                          onDelete: () {
                            setState(() {
                              setState(() {
                                listOfMedicine.removeAt(index);
                                listOfTime.removeAt(index);
                              });
                            });
                          },
                        ),
                      ),
                SizedBox(
                  height: 20.0,
                ),
                addReminderButton(),
              ],
            ),
          ),
        ));
  }

  Widget addReminderButton() {
    return OutlinedButton(
      onPressed: () {
        setDate();
      },
      child: Text(
        "Add Medicine Reminder",
        style: GoogleFonts.poppins(
          color: Colors.grey.shade900,
        ),
      ),
    );
  }

  _sPickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 10),
      initialEntryMode: DatePickerEntryMode.input,
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
    );

    if (date != null)
      setState(() {
        startPickedDate = date;
      });
  }

  _ePickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: endPickedDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialEntryMode: DatePickerEntryMode.input,
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
    );

    if (date != null)
      setState(() {
        endPickedDate = date;
      });
  }

  _pickTime() async {
    final t = await showTimePicker(
      context: context,
      initialTime: time,
    );

    if (t != null)
      setState(() {
        time = t;
      });
  }
}
