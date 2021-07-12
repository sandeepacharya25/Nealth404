class Medicine {
  final String medicineName;
  final String description;
  final String imageUrl;
  final String price;
  final String basicInfo;
  final String therapeuticUses;
  final String warningsAndPrecaution;
  final String interaction;
  final String directionUses;
  final String sideEffects;
  final String storage;
  final String reference;
  final List<String> drugStore;
  Medicine({
    required this.basicInfo,
    required this.therapeuticUses,
    required this.warningsAndPrecaution,
    required this.interaction,
    required this.directionUses,
    required this.sideEffects,
    required this.storage,
    required this.reference,
    required this.medicineName,
    required this.description,
    required this.price,
    required this.drugStore,
    required this.imageUrl,
  });

 
}

List<Medicine> medicineInfo() {
  return [
    Medicine(
      medicineName: "Simvastatin",
      description: "Amoxicillin- 500 Mg/1 Capsules\n10 tablets",
      price: "Rs 100",
      drugStore: ['abc', 'san'],
      imageUrl:"images/amoxicillin.jpg",
      //  "images/Simvastatin.jpg",
      basicInfo: '''Simvastatin belongs to a group of drugs called HMG CoA reductase inhibitors, or "statins." Simvastatin is used together with diet, weight-loss, and exercise to reduce the risk of
heart attack and stroke and to decrease the chance that heart surgery will be needed in people who have heart disease or who are at risk of developing heart disease
''',
      therapeuticUses: "Simvastatin is used along with a proper diet to help lower bad cholesterol and fats (such as LDL, triglycerides) and raise good cholesterol (HDL) in the blood. It belongs to a group of drugs known as statins. It works by reducing the amount of cholesterol made by the liver. Lowering bad cholesterol and triglycerides and raising good cholesterol  decreases the risk of heart disease and helps prevent strokes and heart attacks. In addition to eating a proper diet (such as a low-cholesterol/low-fat diet), other lifestyle changes that may help this medication work better include exercising, losing weight if overweight, and stopping smoking.  Consult your doctor for more details.",
      warningsAndPrecaution: '''Before having surgery, tell your doctor or dentist about all the products you use (including prescription drugs, nonprescription drugs, and herbal products).
Limit alcoholic beverages. Daily use of alcohol may increase your risk for liver problems, especially when combined with simvastatin.  Ask your doctor or pharmacist for more information. 
Older adults may be more sensitive to the side effects of this drug, especially muscle problems. 
Consult your doctor for details.''',

      interaction: '''Some products that may interact with this drug include: "blood thinners" (such as warfarin), cyclosporine, danazol, daptomycin, gemfibrozil.
Other medications can affect the removal of simvastatin from your body, which may affect how simvastatin works. Examples include certain azole antifungals (such as itraconazole, ketoconazole, posaconazole, voriconazole), boceprevir, cobicistat, colchicine, delavirdine, macrolide antibiotics (such as clarithromycin, erythromycin), nefazodone, HIV protease inhibitors (such as nelfinavir, ritonavir), telaprevir, telithromycin, among others. Consult your doctor for details
''',
      directionUses: "if you are using the liquid form of this medication, take this medication on an empty stomach. Shake the bottle well for at least 20 seconds before each dose. Carefully  measure the dose using a special measuring device/spoon. Do not use a household spoon because you may not get the correct dose. Consult your doctor for details",
      sideEffects: '''This drug may rarely cause muscle problems (which can rarely lead to very serious conditions called rhabdomyolysis and autoimmune myopathy). Females, older adults, and  Chinese people may be at higher risk. Tell your doctor right away if you develop any of these symptoms during treatment and if these symptoms last after your doctor stops this drug: muscle pain/tenderness/weakness (especially with fever or unusual tiredness), /n signs of kidney problems (such as change in the amount of urine).
This medication may rarely cause liver problems. If you notice any of the following rare but serious side effects, tell your doctor right away: yellowing eyes/skin, dark urine, severe stomach/abdominal pain, persistent nausea/vomiting. 
''',
      storage: "Keep this medication in the container it came in, tightly closed, and out of reach of children. Store it at room temperature and away from excess heat and moisture (not in the bathroom).",
      reference: '''https://www.rxlist.com/ /n
https://www.webmd.com/ /n
https://medlineplus.gov/     /n
''',
    ),
    Medicine(
        medicineName: "Azithromycin Oral",
        description: "Used for nackpain",
        price: "Rs 100 per 10 tablets",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
        ///"images/axithor.jpg",
        basicInfo: "Azithromycin Oral is used to treat a wide variety of bacterial infections. It is a macrolide-type antibiotic. It works by stopping the growth of bacteria. This medication will not work for viral infections (such as common cold, flu) Unnecessary use or misuse of any antibiotic can lead to its decreased effectiveness",
      therapeuticUses: "It's widely used to treat chest infections such as pneumonia, infections of the nose and throat such as sinus infection (sinusitis), skin infections, Lyme disease and some sexually transmitted infections.",
      warningsAndPrecaution: '''•	People who have myasthenia gravis, a condition that causes muscle weakness, may develop worsening symptoms or breathing problems. People with a history of allergic reactions to macrolides or ketolides should not take azithromycin. has cystic fibrosis/n
•	has a hospital-acquired infection/n
•	has bacteremia/n
•	requires a stay in the hospital/n
•	is older or debilitated/n
•	has a significant underlying health problem, such as immune system problems/n
People should not rely on azithromycin to treat syphilis. /n
A person should speak to a doctor about any existing heart, kidney, and liver conditions before taking azithromycin, including an irregular heartbeat and especially QT prolongation.
''',
      interaction: '''Azithromycin may interact with other medications a person is taking. For example, using azithromycin while taking nelfinavir, which is a drug that helps treat HIV, can increase the risk of liver abnormalities and hearing problems. Other drugs that may interact with azithromycin include:/n
•	digoxin, a heart medication/n
•	colchicine, a gout medication/n
•	phenytoin, a seizure medication/n
•	antacids that contain magnesium or aluminum/n
''',
      directionUses: "Azithromycin is a prescription medication. Therefore, people should not take it without a prescription. The drug is available in the form of a tablet, an oral suspension solution, an eye drop, and an injection. The best type and dosage depend on the infection a person has. People can take the drug with or without food. They should thoroughly shake the liquid form before use.",
      sideEffects: '''Most of the side effects that led people to stop taking the drug were gastrointestinal, such as: /n
•	nausea/n
•	vomiting/n
•	diarrhea/n
•	pain in the abdomen/n
''',
      storage: "•	Store at room temperature away from light and moisture. Keep away from the reach of children. /n",
      reference: '''https://www.webmd.com/ /n
https://www.medicalnewstoday.com/ /n
''',
    ),
    Medicine(
        medicineName: "Lisinopril",
        description:
            "used to treat many conditions such as headache, fever, period pain, toothache, colds, and mild arthritis.",
        price: "Rs 11.3 per 10 tablets",
        drugStore: ['abc', 'san'],
        imageUrl:"images/amoxicillin.jpg",
        /// "images/Lisinopril.jpg",
        basicInfo: '''Lisinopril is a prescription medication used to treat high blood pressure (hypertension) in both adults and children 6 years of age and older. 
Lisinopril belongs to a class of medications called ACE inhibitors. ACE is short for angiotensin converting enzyme. Lisinopril is considered and antihypertensive drug. In general, antihypertensive drugs are used as a treatment for high blood pressure
''',
      therapeuticUses: "Lisinopril is used to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure and to improve survival after a heart attack",
      warningsAndPrecaution: '''•	Discontinue as soon as possible when pregnancy is detected; affects renin-angiotensis system causing oligohydramnios, which may result in fetal injury and or death/n
•	This medication contains lisinopril. Do not take Zestoretic if you are allergic to/n lisinopril or any ingredients contained in this drug/n
•	Keep out of reach of children. In case of overdose, get medical help or contact a Poison Control Center immediately
''',
      interaction: "Some products have ingredients that could raise your blood pressure or worsen your heart failure. Tell your pharmacist what products you are using, and ask how to use them safely (especially cough-and-cold products diet aids, or NSAIDs such as ibuprofen/naproxen).",
      directionUses: "Take this medication by mouth with or without food as directed by your doctor, usually once daily. If you are using the suspension form of this medication, shake the bottle well before each dose. Carefully measure the dose using a special measuring device/spoon Do not use a household spoon because you may not get the correct dose",
      sideEffects: "Dizziness, lightheadedness, tiredness, or headache may occur as your body adjusts to the medication. Dry cough may also occur. If any of these effects last or get worse, tell your doctor or pharmacist promptly.",
      storage: "Store at room temperature away from light and moisture. Keep away from the reach of children",
      reference: '''https://www.webmd.com/ /n
https://www.rxlist.com/ /n
''',
        ),
    Medicine(
        medicineName: "Gabapentin",
        description:
            "used to bring down high body temperatures and to prevent recurrence of heart attacks or strokes by thinning the blood.",
        price: "Rs 5.2 per 10 tablets",
        drugStore: ['abc', 'san'],
        imageUrl:"images/amoxicillin.jpg",
        /// "images/Gabapentin.jpg",
        basicInfo: "Gabapentin is an anti-epileptic drug, also called an anticonvulsant. It affects chemicals and nerves in the body that are involved in the cause of seizures and some types of pain.",
      therapeuticUses: "Gabapentin capsules, tablets, and oral solution are used along with other medications to help control certain types of seizures in people who have epilepsy. It is also used to relieve nerve pain following shingles (a painful rash due to herpes zoster infection) in adults. Gabapentin is known as an anticonvulsant or antiepileptic drug",
      warningsAndPrecaution: "Gabapentin can cause life-threatening breathing problems, especially if you already have a breathing disorder or if you use other medicines that can make you drowsy or slow your breathing. Seek emergency medical attention if you have very slow breathing. This product may contain inactive ingredients, which can cause allergic reactions or other problems. Talk to your pharmacist for more details.",
      interaction: "Using gabapentin with other drugs that make you drowsy or slow your breathing can cause dangerous side effects or death. Ask your doctor before using opioid medication, a sleeping pill, cold or allergy medicine, a muscle relaxer, or medicine for anxiety or seizures.",
      directionUses: "Take this medication by mouth with or without food as directed by your doctor. Dosage is based on your medical condition and response to treatment. For children, the dosage is also based on weight. Take gabapentin exactly as prescribed by your doctor",
      sideEffects: "Drowsiness, dizziness, loss of coordination, tiredness, blurred/double vision, unusual eye movements, or shaking (tremor) may occur. If any of these effects persist or worsen, tell your doctor or pharmacist promptly.",
      storage: "Store at room temperature away from light and moisture. Keep away from the reach of children.",
      reference: '''https://www.webmd.com/ /n
https://medlineplus.gov/ /n
https://www.drugs.com/ /n
''',
        ),
    Medicine(
        medicineName: "Amlodipine",
        description:
            "sed in men to help relieve the symptoms of an enlarged prostate ",
        price: "Rs 19.86 per capsule",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
       /// "images/amlodipine.jpg",
        basicInfo: "Amlodipine is a calcium channel blocker. It affects the movement of calcium into the cells of the heart and blood vessels This relaxes the blood vessels and lowers blood pressure. A lower blood pressure will increase the supply of blood and oxygen to the heart.",
      therapeuticUses: "Amlodipine helps to control high blood pressure, angina, and coronary artery disease, but does not cure these conditions. Continue to take amlodipine even if you feel well. Do not stop taking amlodipine without talking to your doctor.",
      warningsAndPrecaution: "•	Tell your doctor and pharmacist if you are allergic to amlodipine, any other/n medications, or any ingredients in amlodipine tablets or suspension. Ask your pharmacist for a list of the ingredients. tell your doctor if you are pregnant, /n plan to become pregnant, or are breast-feeding. If you become pregnant while taking amlodipine, call your doctor",
      interaction: '''Tell your doctor about all your current medicines and any you start or stop using, especially:
•	nitroglycerin; /n
•	simvastatin (Zocor, Simcor, Vytorin); or /n
•	any other heart or blood pressure medications. /n
''',
      directionUses: "Amlodipine oral tablet is used for long-term treatment. It comes with serious risks if you don’t take it as prescribed. It is very important that you take your medicine exactly as  directed and that you keep your appointments with your doctor even if you feel well",
      sideEffects: '''More common /n
•	Swelling of the ankles or feet
Less common /n
•	Difficult or labored breathing/n
•	dizziness/n
•	fast, irregular, pounding, or racing heartbeat or pulse/n
•	feeling of warmth/n
•	redness of the face, neck, arms, and occasionally, upper chest/n
•	tightness in the chest/n
''',
      storage: "Store the medicine in a closed container at room temperature, away from heat, moisture, and direct light. Keep from freezing. Keep out of the reach of children",
      reference: '''https://www.medicalnewstoday.com/ /n
https://medlineplus.gov/ /n
https://www.mayoclinic.org/ /n
''',
        ),
    Medicine(
        medicineName: "Hydrocodone-Acetaminophen",
        description: "VACCINES AGAINST HEPATITS 'A'",
        price: "Rs 2,029.86 / AMP",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
        //"images/Hydro.jpg",
        basicInfo: "Hydrocodone belongs to the group of medicines called narcotic analgesics (pain medicines). It acts on the central nervous system (CNS) to relieve pain, and stops or prevents cough",
      therapeuticUses: "This combination medication is used to relieve moderate to severe pain. hydrocodone combination products are used to relieve cough. Hydrocodone is in a class of medications called opiate (narcotic) analgesics and in a class of medications called/n antitussives. Hydrocodone relieves pain by changing the way the brain and nervous system respond to pain. Hydrocodone relieves cough by decreasing activity in the part of the brain that causes coughing.",
      warningsAndPrecaution: "Tell your doctor and pharmacist if you are allergic to hydrocodone, the other medication in the hydrocodone combination product you are taking, other opiate (narcotic) medications such as morphine or codeine, any other medications, or any of the ingredients in the hydrocodone combination product you are taking. Ask your pharmacist or check the manufacturer's information for the patient for a list of the ingredients.",
      directionUses: "Take this medication by mouth as directed by your doctor. You may take this drug with or without food. If you have nausea, it may help to take this drug with food. Ask your doctor or pharmacist about other ways to decrease nausea (such as lying down for 1 to 2 hours with as little head movement as possible).",
      interaction: "Some products that may interact with this drug are: certain pain medications (mixed opioid agonist/antagonists such as pentazocine, nalbuphine, butorphanol), naltrexone",
      sideEffects: "Nausea, vomiting, constipation, lightheadedness, dizziness, or drowsiness may occur.  Some of these side effects may decrease after you have been using this medication for a while. If any of these effects persist or worsen,  tell your doctor or pharmacist promptly",
      storage: "Store the medicine in a closed container at room temperature, away from heat, moisture, and direct light. Keep from freezing. Keep out of the reach of children",


      reference: "https://www.webmd.com/ \nhttps://www.mayoclinic.org/ \nhttps://medlineplus.gov/ \n"


    ),
        
    Medicine(
        medicineName: "Omeprazole",
        description: "NSAIDS/ANTI-PYRETICS/ANALGESIC",
        price: "Rs 111.60 per tube",
        drugStore: ['abc', 'san'],
        imageUrl:"images/amoxicillin.jpg",
        /// "images/Omeprazole.jpg",
        basicInfo: "Omeprazole oral capsule is a prescription drug that’s only available in a generic form. It doesn’t have a brand-name version. Omeprazole is also available as an oral suspension and comes as an over-the-counter (OTC) medication",
      therapeuticUses: "This drug is used as a treatment of other conditions such as the management of gastric or duodenal ulcers, gastroesophageal reflux disease (GERD), erosive esophagitis (inflammation in the esophagus), and hypersecretory conditions (conditions where your stomach makes too much acid).  This drug is also used to treat stomach infections caused by the bacteria Helicobacter pylori.",
      warningsAndPrecaution: "This medication contains omeprazole. Do not take Prilosec or Prilosec OTC if you are allergic to omeprazole or any ingredients contained in this drug.Keep out of reach of children. In case of overdose, get medical help or contact a Poison Control Center immediately ",
      interaction: "Omeprazole oral capsule can interact with other medications, vitamins, or herbs you may be taking. An interaction is when a substance changes the way a drug works. This can be harmful or prevent the drug from working well. Atazanavir, rilpivirine, and nelfinavir.  Omeprazole may greatly decrease the effects of these drugs and could make them less effective over time. You shouldn’t take these drugs with omeprazole. Clopidogrel. Omeprazole may reduce the effects of clopidogrel, causing your blood to clot. You shouldn’t take this drug with omeprazole.",
      directionUses: "Take this medication by mouth as directed, usually once daily before a meal. The dosage and length of treatment are based on your medical condition and response to treatment. In children, the dosage is also based on weight.  Do not increase your dose or take this drug more often than directed. If you have any questions, ask your doctor or pharmacist.",
      sideEffects: "Tell your doctor right away if you have any serious side effects, including: symptoms of  a low magnesium blood level (such as unusually fast/slow/irregular heartbeat, persistent muscle spasms, seizures), signs of lupus (such as rash on nose and cheeks, new or worsening joint pain).",
      storage: '''Store the medicine in a closed container at room temperature, away from heat, moisture, and direct light. Keep from freezing. /n
Keep out of the reach of children
''',
      reference: '''https://www.webmd.com/ /n
https://medlineplus.gov/ /n
https://www.mayoclinic.org/ /n
''',
        ),
    Medicine(
        medicineName: "Levothyroxine",
        description: "AYURVEDIC PREPARATIONS FOR COUGh",
        price: "Rs 75 per bottle",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
        //"images/Levothyroxine.jpg",
        basicInfo: "Levothyroxine is a medicine used to treat an underactive thyroid gland (hypothyroidism) . The thyroid gland makes thyroid hormone which helps to control energy levels and growth. Levothyroxine is taken to replace the missing thyroid hormone.",
      therapeuticUses: "Levothyroxine is used to treat an underactive thyroid gland (hypothyroidism).  It replaces or provides more thyroid hormone, which is normally produced by the thyroid gland.  It is also used with surgery and radioactive iodine therapy to treat thyroid cancer. Levothyroxine is in a class of medications called hormones. It works by replacing thyroid hormone that is normally produced by the body",
      warningsAndPrecaution: "Before taking levothyroxine, tell your doctor or pharmacist if you are allergic to it; or if you have any other allergies. This product may contain inactive ingredients, which can cause allergic reactions or other problems.  Talk to your pharmacist for more details. if you have surgery, including dental surgery, tell the doctor or dentist that you are taking levothyroxine.",
      interaction: "Some products that may interact with this drug are: blood thinners (such as warfarin), digoxin, sucroferric oxyhydroxide.  Keep a list of all the products you use (including prescription/nonprescription drugs and herbal products) and share it with your doctor and pharmacist. Do not start, stop, or change the dosage of any medicines without your doctor's approval.",
      directionUses: "Take this medication by mouth as directed by your doctor, usually once daily on an empty stomach, 30 minutes to 1 hour before breakfast. This medication may be taken by first mixing it in water, or it may be taken directly (without water). Read the Patient Information Leaflet and Instructions  for Use if available from your pharmacist before you start taking levothyroxine and each time you get a refill. If you have any questions, ask your doctor or pharmacist",
      sideEffects: "Hair loss may occur during the first few months of treatment.  This effect is usually temporary as your body adjusts to this medication. If this effect lasts or gets worse, tell your doctor or pharmacist promptly.",
      storage: "Keep this medication in the container it came in, tightly closed, and out of reach of /n children. Store it at room temperature and away from excess heat and moisture (not in the bathroom).",
      reference: "https://www.webmd.com/ /n https://medlineplus.gov/ /nhttps://www.mayoclinic.org/ /n",
        ),
    Medicine(
        medicineName:"Metformin",
        description: "DIETARY SUPPLEMENTS-DIGESTIVE ENZYMES",
        price: "Rs  23 per sachet",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
        //"images/Metformin.jpg",
        basicInfo: "Metformin is a drug approved as a prescription medication to treat diabetes. This medication is used to decrease hepatic (liver) glucose production, to decrease GI glucose absorption and to increase target cell insulin sensitivity",
      therapeuticUses: "Metformin is used with a proper diet and exercise program and possibly with other medications to control high blood sugar.  Metformin is in a class of drugs called  biguanides. Metformin helps to control the amount of glucose (sugar) in your blood. It decreases the amount of glucose you absorb from your food and the amount of glucose made by your liver,",
      warningsAndPrecaution: "Before using this medication, tell your doctor or pharmacist your medical history, especially of: severe breathing problems (such as obstructive lung disease, severe asthma), blood problems (such as anemia, vitamin B12 deficiency), kidney disease, liver disease.",
      interaction: "Beta-blocker medications (such as metoprolol, propranolol, glaucoma eye drops such as timolol) may prevent the fast/pounding heartbeat you would usually feel when your blood sugar falls too low (hypoglycemia). Other symptoms of low blood sugar, such as dizziness, hunger, or sweating, are unaffected by these drugs",
      directionUses: "The dosage is based on your medical condition, response to treatment, and other medications you may be taking. Be sure to tell your doctor and pharmacist about all the products you use (including prescription drugs, nonprescription drugs, and herbal products). To reduce your risk of side effects (such as upset stomach), your doctor may direct you to start this medication at a low dose and gradually increase your dose. Follow your doctor's instructions carefully",
      sideEffects: "Nausea, vomiting, stomach upset, diarrhea, weakness, or a metallic taste in the mouth may occur. If any of these effects persist or worsen,  tell your doctor or pharmacist promptly. If stomach symptoms return later (after taking the same dose for several days or weeks), tell your doctor right away.  Stomach symptoms that occur after the first days of your treatment may be signs of lactic acidosis.",
      storage: "Keep this medication in the container it came in, tightly closed, and out of reach of children.  Store it at room temperature and away from excess heat and moisture (not in the bathroom).",
      reference: '''https://www.rxlist.com/ /n
https://www.webmd.com/ /n
https://medlineplus.gov/    /n
''',
        ),
    Medicine(
        medicineName: "Lipitor",
        description: "SANITARY PADS",
        price: "Rs  120 per PCS",
        drugStore: ['abc', 'san'],
        imageUrl: "images/amoxicillin.jpg",
        //"images/Lipitor.jpg",
        basicInfo: "Lipitor belongs to a class of drugs called Lipid-Lowering Agents, Statins, HMG-CoA Reductase Inhibitors. Lipitor is for use in adults and children who are at least 10 years old.",
      therapeuticUses: "Lipitor is a prescription medicine used to lower blood levels of “bad” cholesterol (low-density lipoprotein, or LDL), to increase levels of “good” cholesterol (high-density lipoprotein, or HDL), and to lower triglycerides and to treat the symptoms of high cholesterol (hyperlipidemia) and to lower the risk of stroke, heart attack or other heart complications. Lipitor may be used alone or with other medications.",
      warningsAndPrecaution: "You should not take Lipitor if you are pregnant or breastfeeding, if you have liver disease, or if you have had an allergic reaction to Lipitor in the past. Before using this medication, tell your doctor or pharmacist your medical history, especially of: liver disease, kidney disease, alcohol use",
      interaction: '''Some products that may interact with this drug include: daptomycin, gemfibrozil. 
Other medications can affect the removal of atorvastatin from your body, which may affect how atorvastatin works.  Examples include cyclosporine, glecaprevir plus pibrentasvir, telaprevir, telithromycin, ritonavir, among others. other cholesterol-lowering  medication; antibiotic or antifungal medicine; birth control pills; medicine to prevent organ transplant rejection; heart medication; or medicine to treat hepatitis C or HIV
''',
      directionUses: "The dosage is based on your medical condition, response to treatment, age, and other medications you may be taking. Be sure to tell your doctor and pharmacist about all  the products you use (including prescription drugs, nonprescription drugs, and herbal products). Consult your doctor or pharmacist for more details.",
      sideEffects: '''A very small number of people taking atorvastatin may have mild memory problems or/n confusion. If these rare effects occur, talk to your doctor. 
Rarely, statins may cause or worsen diabetes. Talk to your doctor about the benefits and risks.
A very serious allergic reaction to this drug is rare. However, seek immediate medical attention if you notice any symptoms of a serious allergic reaction, including: rash, itching/swelling (especially of the face/tongue/throat), severe dizziness, trouble breathing.
''',
      storage: "Keep this medication in the container it came in, tightly closed, and out of reach of children.  Store it at room temperature and away from excess heat and moisture (not in the bathroom).",
      reference: '''https://www.rxlist.com/ /n
https://www.webmd.com/ /n
https://medlineplus.gov/     /n
''',

        ),
  ];
}
