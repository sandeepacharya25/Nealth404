class Symptom {
  List nameOfSymptom;
  String possibleDiseases;
  String preventive;
  List hospital;
  String doctor;
  Symptom({
    required this.nameOfSymptom,
    required this.possibleDiseases,
    required this.preventive,
    required this.hospital,
    required this.doctor,
  });
}

List <Symptom> symptoms(){
  return [
    Symptom(
      nameOfSymptom: ['Weakness','Stomach Pain','Headache','Diarrhea','Loss of appetite,'],
      possibleDiseases: 'Typhoid fever, paratyphoid fever',
      preventive: '''•	Wash your hands. Frequent hand-washing in hot, soapy water is the best way to control infection. Wash before eating or preparing food and after using the toilet. Carry an alcohol-based hand sanitizer for times when water isn't available.
•	Avoid drinking untreated water. Contaminated drinking water is a particular problem in areas where typhoid fever is endemic. For that reason, drink only bottled water or canned or bottled carbonated beverages, wine and beer. Carbonated bottled water is safer than non-carbonated bottled water.
Ask for drinks without ice. Use bottled water to brush your teeth, and try not to swallow water in the shower.
•	Avoid raw fruits and vegetables. Because raw produce may have been washed in contaminated water, avoid fruits and vegetables that you can't peel, especially lettuce. To be absolutely safe, you may want to avoid raw foods entirely.
•	Choose hot foods. Avoid food that's stored or served at room temperature. Steaming hot foods are best. And although there's no guarantee that meals served at the finest restaurants are safe, it's best to avoid food from street vendors — it's more likely to be infected.
•	Know where the doctors are. Find out in advance about medical care in the areas you'll visit, and carry a list of the names, addresses and phone numbers of recommended doctors.
''',
    hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
    doctor: 'Dr. Binkel Kheral, Dr. Samrat Paudel, Dr. Uttam Pradhan,', 
    ),
    Symptom(
      nameOfSymptom: ['a cough','difficulty breathing','rapid heartbeat','high temperature','sweating and shivering'],
      possibleDiseases: 'pneumonia',
      preventive: '''•	Wash your hands regularly, especially after you go to the bathroom and before you eat.\n
•	Eat right, with plenty of fruits and vegetables.\n
•	Exercise.\n
•	Get enough sleep.\n
•	Quit smoking.\n
•	Stay away from sick people, if possible.
''',
      hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
      doctor: 'Dr. Pukar Bajgain, Dr.Prakash Tajpuriya',
    ),
    Symptom(
      nameOfSymptom: ['fever', 'fatigue', 'loss of appetite', 'nausea', 'vomiting', 'abdominal pain', 'dark urine', 'light-colored stools', 'joint pain', 'jaundice'],
      possibleDiseases: 'hepatitis',
      preventive: '''•	Get the vaccines for hepatitis A and hepatitis B.\n
•	Use a condom during sex.\n
•	Don't share needles to take drugs.\n
•	Practice good personal hygiene such as thorough hand-washing with soap and water.\n
•	Don't use an infected person's personal items.
''',
      hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
      doctor: 'Dr. Rojen Maharjan, Dr. Nirnaya Dangol',
    ),
    Symptom(
      nameOfSymptom: ['fever','dry cough','tiredness','aches and pains','sore throat','diarrhoea','headache','difficulty breathing','chest pain','loss of speech'],
      possibleDiseases: 'COVID-19',
      preventive: '''•	Clean your hands often. Use soap and water, or an alcohol-based hand rub.\n
•	Maintain a safe distance from anyone who is coughing or sneezing.\n
•	Wear a mask when physical distancing is not possible.\n
•	Don’t touch your eyes, nose or mouth.\n
•	Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.\n
•	Stay home if you feel unwell.\n
•	If you have a fever, cough and difficulty breathing, seek medical attention.\n
''',
      hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
      doctor: 'Dr. Siddhartha Mishra, Pratik Silwal',
    ),
    Symptom(
      nameOfSymptom: ['headache','loss of appetite','tiredness','fever'],
      possibleDiseases: 'chickenpox',
      preventive: '''The best way to prevent chickenpox is to get the chickenpox vaccine. Everyone—including children, adolescents, and adults—should get two doses of chickenpox vaccine if they have never had chickenpox or were never vaccinated.

Chickenpox vaccine is very safe and effective at preventing the disease. Most people who get the vaccine will not get chickenpox. If a vaccinated person does get chickenpox, the symptoms are usually milder with fewer or no blisters (they may have just red spots) and mild or no fever.

The chickenpox vaccine prevents almost all cases of severe illness. Since the varicella vaccination program began in the United States, there has been over 90% decrease in chickenpox cases, hospitalizations, and deaths.''',
      hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
      doctor: 'Dr. Suzata Bhattarai, Dr. Nischal Kheral',
    ),
    Symptom(
      nameOfSymptom: ['fever','chills','abdominal pain','flu-like symptoms','change in skin color','dark-colored urine'],
      possibleDiseases: 'jaundice',
      preventive: '''•	Avoid hepatitis infection.\n
•	Stay within recommended alcohol limits.\n
•	Maintain a healthy weight.\n
•	Manage your cholesterol.
''',
      hospital: ['Kanki Hospital','B&C Hospital','Birta City Hospital'],
      doctor: 'Dr. Ujjwal Lamichhane, Dr. Madan Panthi',
    ),
  ];
}
