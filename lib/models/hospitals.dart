class Hospital {
  String name;
  String description;
  String location;
  String imageUrl;
  String doctors;
  String beds;
  int phoneNumber;

  
  Hospital({
    required this.name,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.doctors,
    required this.beds,
    required this.phoneNumber,
  });
}

List <Hospital>hospitals(){
  return [
    Hospital(
      name: "T.U Teaching Hospital",
      description: 'TU Teaching Hospital has been providing the most advanced tertiary health care services. We have a team of highly renowned and experienced doctors, trained nurses and highly qualified, hardworking and dedicated staffs. As a result, more than 2000 outdoor patients get benefited every day. We render almost every type of services from general check up to highly advanced treatment which includes advanced critical care facilities for all age group patient, minor to major surgeries, transplant surgeries for kidney and liver, best post-op and indoor care.',
      location:"Maharajgunj Rd, Kathmandu",
      imageUrl: "images/tuteaching.jpg",
      doctors: "Dr. Sandeep Acharya",
      beds: "120 OPD,\n 50 ICU,\n 20 Ventilator",
      phoneNumber: 9815456789,
    ),
    Hospital(
      name: "Purbanchal Cancer Hospital",
      description: "Purbanchal Cancer Hospital is a 100 bedded comprehensive cancer center situated in the eastern part of Nepal which covers around 10 million population and also part of India along border. This is the only cancer hospital in Nepal equipped with True Beam Linear accelerator, Brachytherapy, 4D-CT simulator, PET-CT, Gamma Camera, Mammogram, MRI along with all medical oncology & surgical services.",
      location:"Birtamode 57200",
      imageUrl: "images/purbanchal_cancer_hospital.jpg",
       doctors: "",
      beds: "",
      phoneNumber: 02358726,

      
    ),
    Hospital(
      name: "Birta City Hospital",
      description: "",
      location:"Birtamode Jhapa",
      imageUrl: "images/birta_city.jpg",
       doctors: "",
      beds: "",
      phoneNumber: 023589712,
      
    ),
  ];
}
