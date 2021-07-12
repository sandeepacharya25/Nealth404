class Doctor {
  final String name;
  final String specialist;
  final String qualification;
  final String experience;
  final String available;
  final String timeForVC;
  final String imageUrl;
  Doctor({
    required this.name,
    required this.specialist,
    required this.qualification,
    required this.experience,
    required this.available,
    required this.timeForVC,
    required this.imageUrl,
  });
}

List <Doctor> doctors(){
  return [
    Doctor(
      name:"Dr Bhupan Mandel",
      specialist: "Pet rog ",
      qualification: "MD, MBBS",
      experience: "2 yrs",
      available: "Every week ",
      timeForVC: "2Pm",
      imageUrl: "images/personalcare.jpg",

    ),
    Doctor(
      name:"Dr Bhupan Mandel",
      specialist: "Pet rog ",
      qualification: "MD, MBBS",
      experience: "2 yrs",
      available: "Every week ",
      timeForVC: "2Pm",
      imageUrl: "images/personalcare.jpg",

    ),
    Doctor(
      name:"Dr Bhupan Mandel",
      specialist: "Pet rog ",
      qualification: "MD, MBBS",
      experience: "2 yrs",
      available: "Every week ",
      timeForVC: "2Pm",
      imageUrl: 'images/personalcare.jpg',

    ),
  ];
}
