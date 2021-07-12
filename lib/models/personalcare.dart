class PersonalCare {
  String name;
  String price;
  String description;
  String productDetails;
  String imageUrl;
  PersonalCare({
    required this.name,
    required this.price,
    required this.description,
    required this.productDetails,
    required this.imageUrl,
  });
}

List<PersonalCare> personalCare() {
  return [
    PersonalCare(
      name: "The Ordinary - Hyaluronic Acid 2% + B5 30ml",
      price: "Rs 1850.00",
      description:
          "Hyaluronic Acid 2% + B5 is a hydration support formula with ultra-pure, vegan hyaluronic acid",
      productDetails:
          '''•	The molecular size of HA determines its depth of delivery in the skin\n
•	This formulation combines low-, medium- and high-molecular-weight HA, as well \nas a next-generation HA crosspolymer at a combined concentration of 2% for\n multi-depth hydration in a water-based formula.\n
•	This system is supported with the addition of Vitamin B5 which also enhances surface hydration.\n
''',
      imageUrl: "images/ordinary.JPG",
    ),
    PersonalCare(
      name: "Scalpe Plus Anti-Dandruff Shampoo",
      price: "Rs 416.00",
      description:
          "It is suitable to use on all type of hair. It comes in a quantity of 75 ml.\n",
      productDetails: '''•	Reduces dandruff\n
•	Prevents itching, flaking & scaling on the scalp\n
•	Prevents hair fall\n
•	Gives a conditioning effect\n
''',
      imageUrl: "images/scalp.JPG",
    ),
    PersonalCare(
      name: "Plum Green Tea Renewed Clarity Night Gel 50ml",
      price: "Rs 1069.00",
      description:
          "If you have oily skin, you've tried night cream after night cream and are still tired of waking up every morning with an oily skin. Presenting a breakthrough product from Plum for clear, fresh and hydrated skin every morning.",
      productDetails: '''•	Ultra-light gel texture that is pillow-proof\n
•	Contains non-comedogenic ingredients\n
•	Argan oil provides balanced hydration and helps skin retain moisture overnight\n
•	Green tea extracts help combat acne\n
''',
      imageUrl: "images/plum.JPG",
    ),
    PersonalCare(
      name: "Kleida Foaming Face Wash",
      price: "Rs 612.75",
      description: "Face wash for acne prone skin.",
      productDetails:
          '''•	Formulated for gentle skin cleasing yielding a refreshed and radiant facial look.\n
•	Designed to provide a fine foam with an exfoliating action to cleanse acne pores \nwhile aiding removal of old and dead skin cells.\n
•	Ensures suppleness and a soothing feel post wash\n
''',
      imageUrl: "images/keldia.JPG",
    ),
    PersonalCare(
      name:
          "White Objective Lightening Serum, Intense Night Care, BIODERMA 30ml 1fl. oz.",
      price: "Rs 3000.00",
      description:
          "An intense lightening serum for intense night care.Evens and illuminates the complexion.Anti brown marks.Fragrance free.A PRODUCT OF FRANCE",
      productDetails:
          "White Objective Serumlightens, evens and illuminates the complexion. It helps to eliminate brown marks and prevents their reappearsnce. VITAMINE C released gradually for long term effectiveness, decreases the melanin pigments. Thus it reduces thr hyperpigmrntationd already established and presents future pigmentations. It works on the main mecahanism that causses skin pigmentation, thus it ensuresoptimum lightening and prevenglycolic antive performance. The intensivepeeling action ofglycolic acid triggers the elimination of the cells loaded with pigments, reduces the intensity of the brown marks and reveals aradiant face. PLEASE SEE PICTURES FOR DETAILED INFORMATION ABOUT DIRECTION TO USE AND INGREDIENTS.",
      imageUrl: "images/bloderma.JPG",
    ),
    PersonalCare(
      name: "Sunstop Spf 30+ Sunscreen Cream 45ml",
      price: "Rs 1299.04",
      description:
          "The ideal sunscreen cream protects delicate and fair skin against the damaging effects of UVB radiation, UVA1, UVA2 radiation, visible light, and infrared radiation.Each tube contain 45ml",
      productDetails:
          '''•	NON-GREASY AND NON-COMEDOGENIC: Great option for those who\n experience acne-prone, impure, or combination skin and it won't clog or block the\n pores on your skin.\n
•	MAXIMUM BROAD SPECTRUM: Provides maximum broad-spectrum protection\n with very high protection. Protects the skin without clogging pores.\n
•	WATER AND SWEAT RESISTANT: Helps prevent sunburn. Great for use on dry\n and other skin types, clinically. Epidermal and Dermal photoprotection.\n
•	FAST ABSORBING: Protects delicate and fair skin against the damaging effects. \nAustralian TGA-approved sunblock.\n
•	MULTIPLE FILTERS: able to filter 99.9% of UVB radiation emitted by the sun. \nSunstop SPF 30+ Sunscreen Cream also contains multiple filters to absorb, \nreflect and diffuse radiation to prevent it from penetrating into the skin and fight \nfree radical formation which will cause cellular damage.\n
''',
      imageUrl: "images/sunstop.JPG",
    ),
    PersonalCare(
      name: "Skinella African Melon & Tea Tree Facial Foam, 150ml",
      price: "Rs 600.00",
      description:
          "African Melon and Tea Tree oil extracts gently cleanse and refresh your skin with laden antioxidants and Vitamin C.",
      productDetails:
          '''•	African Melon helps to cleanse and combat oily skin.\n
•	Tea Tree'S anti-inflammatory and anti-microbial properties help to prevent acne \nand reduce acne scar, leaving you with a smooth and clear skin\n
''',
      imageUrl: "images/skinella.JPG",
    ),
  ];
}
