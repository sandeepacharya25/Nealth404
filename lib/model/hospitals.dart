class Hospital {
  String name;
  String location;
  String imageUrl;
  Hospital({
    required this.name,
    required this.location,
    required this.imageUrl,
  });
}

List <Hospital>hospitals(){
  return [
    Hospital(
      name: "T.U Teaching Hospital",
      location:"Maharajgunj Rd, Kathmandu 44600",
      imageUrl: "images/tuteaching.jpg"
    ),
    Hospital(
      name: "Purbanchal Cancer Hospital",
      location:"Birtamode 57200",
      imageUrl: "images/purbanchal_cancer_hospital.jpg"
    ),
    Hospital(
      name: "Birta City Hospital",
      location:"Birtamode Jhapa",
      imageUrl: "images/birta_city.jpg",
    ),
  ];
}
