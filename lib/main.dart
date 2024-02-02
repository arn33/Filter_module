import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController makeController = new TextEditingController();
  TextEditingController modelController = new TextEditingController();
  TextEditingController yearFromController = new TextEditingController();
  TextEditingController yearToController = new TextEditingController();
  TextEditingController conditionFromController = new TextEditingController();
  TextEditingController conditionToController = new TextEditingController();
  TextEditingController engineFromController = new TextEditingController();
  TextEditingController engineToController = new TextEditingController();
  TextEditingController fuelController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  TextEditingController transmissionController = new TextEditingController();

  final List<String> makesList = [
    'AUDI',
    'BMW',
    'CHRYSLER',
    'HONDA',
    'JAGUAR',
    'JEEP',
    'LEXUS',
    'MAZDA',
    'MERCEDES-BENZ',
    'MINI',
    'MITSUBISHI',
    'NISSAN',
    'RENNAULT',
    'SUBARU',
    'SUZUKI',
    'TOYOTA',
    'VOLKSWAGEN',
  ];

  final List<String> modelList = [
    '1 Series',
    '1161',
    '118D',
    '1181',
    '120',
    '1201',
    '1301',
    '1351',
    '2 SERIES',
    '218D',
    '2201',
  ];

  final List<String> yearFromList = [
    '2024',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
    '2007',
    '2006',
    '2005',
    '2004',
    '2003',
    '2002',
    '2001',
    '2000',
    '1999',
    '1998',
    '1997',
    '1996',
    '1995',
    '1994',
    '1993',
    '1992',
    '1991',
    '1990',
    '1989',
    '1988',
    '1987',
    '1986',
    '1985',
    '1984',
    '1983',
    '1982',
    '1981',
    '1980',
  ];

  final List<String> yearToList = [
    '2024',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
    '2007',
    '2006',
    '2005',
    '2004',
    '2003',
    '2002',
    '2001',
    '2000',
    '1999',
    '1998',
    '1997',
    '1996',
    '1995',
    '1994',
    '1993',
    '1992',
    '1991',
    '1990',
    '1989',
    '1988',
    '1987',
    '1986',
    '1985',
    '1984',
    '1983',
    '1982',
    '1981',
    '1980',
  ];

  final List<String> conditionFromList = [
    'S',
    '5',
    '4.5',
    '4',
    '3.5',
    '3',
    'RA',
    'R',
    '2',
    '1',
    '0',
  ];

  final List<String> conditionToList = [
    'S',
    '5',
    '4.5',
    '4',
    '3.5',
    '3',
    'RA',
    'R',
    '2',
    '1',
    '0',
  ];

  final List<String> engineFromList = [
    'Lowest',
    '125',
    '250',
    '900',
    '1000',
    '1100',
    '1200',
    '1300',
    '1400',
    '1500',
    '1600',
    '1700',
    '1800',
    '2000',
    '2100',
    '2200',
    '2300',
    '2400',
    '2500',
    '2600',
    '2700',
    '2800',
    '3000',
    '4000',
  ];

  final List<String> engineToList = [
    'Highest',
    '125',
    '250',
    '900',
    '1000',
    '1100',
    '1200',
    '1300',
    '1400',
    '1500',
    '1600',
    '1700',
    '1800',
    '2000',
    '2100',
    '2200',
    '2300',
    '2400',
    '2500',
    '2600',
    '2700',
    '2800',
    '3000',
    '4000',
  ];

  final List<String> fuelList = [
    'Petrol',
    'Hybrid',
    'Electric',
    'Diesel',
  ];

  final List<String> locationList = [
    'New Zealand',
    'Japan',
    'In-Transit',
  ];

  final List<String> transmissionList = [
    'Manual',
    'Auto',
    '5spd',
    '6spd',
  ];

  // Hide dropdown
  bool hideMakeList = false;
  bool hideModelList = false;
  bool hideYearFromList = false;
  bool hideYearToList = false;
  bool hideConditionFromList = false;
  bool hideConditionToList = false;
  bool hideEngineFromList = false;
  bool hideEngineToList = false;
  bool hideFuelList = false;
  bool hideLocationList = false;
  bool hideTransmissionList = false;
  bool hideConditionList = false;

  // Checkbox
  bool check1 = false;

  // AppBar
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          flexibleSpace: SafeArea(
            child: Container(
              // color: Colors.red,
              padding: EdgeInsets.only(top: 7, left: 52),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/afc_logo.png",
                              width: 280, fit: BoxFit.fill)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu, size: 42))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: content(),
      ),
    );
  }

// title: Text("Customize Dropdown Button")

  Widget content() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          // width: double.infinity,
          height: 700,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 100,
              // ),
              // Row(
              //   children: [

              // Year Row Dropdown
              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text("Year: ",
              //             style: TextStyle(fontSize: 17, color: Colors.white)),
              //         // SizedBox(
              //         //   height: 2,
              //         // ),
              //         inputField("Make", makeController),
              //         hideMakeList
              //             ? selectionField("Make", makeController)
              //             : SizedBox()
              //       ],
              //     ),
              //   ],
              // ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MAKE ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      inputField("Make", makeController),
                      hideMakeList
                          ? selectionField("Make", makeController)
                          : SizedBox()
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MODEL ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      inputField("Model", modelController),
                      hideModelList
                          ? selectionField("Model", modelController)
                          : SizedBox()
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("YEAR ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      inputField2("YearFrom", yearFromController),
                      hideYearFromList
                          ? selectionField2("YearFrom", yearFromController)
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20), // Adjust the value as needed
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24), // Adjust the value as needed
                        child: inputField3("YearTo", yearToController),
                      ),
                      hideYearToList
                          ? selectionField3("YearTo", yearToController)
                          : SizedBox(),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CONDITION GRADE ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      inputField2("ConditionFrom", conditionFromController),
                      hideConditionFromList
                          ? selectionField2(
                              "ConditionFrom", conditionFromController)
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20), // Adjust the value as needed
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24), // Adjust the value as needed
                        child:
                            inputField3("ConditionTo", conditionToController),
                      ),
                      hideConditionToList
                          ? selectionField3(
                              "ConditionTo", conditionToController)
                          : SizedBox(),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ENGINE SIZE ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      inputField4("EngineFrom", engineFromController),
                      hideEngineFromList
                          ? selectionField4("EngineFrom", engineFromController)
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20), // Adjust the value as needed
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24), // Adjust the value as needed
                        child: inputField5("EngineTo", engineToController),
                      ),
                      hideEngineToList
                          ? selectionField5("EngineTo", engineToController)
                          : SizedBox(),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ODOMETER ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 3,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20), // Adjust the value as needed
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 24), // Adjust the value as needed
                        child: inputField5("EngineTo", engineToController),
                      ),
                      hideEngineToList
                          ? selectionField5("EngineTo", engineToController)
                          : SizedBox(),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),

              Row(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TRANSMISSION ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 3,
                          ),
                          inputField4("EngineFrom", engineFromController),
                          hideEngineFromList
                              ? selectionField4(
                                  "EngineFrom", engineFromController)
                              : SizedBox()
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FUEL TYPE ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 3,
                          ),
                          inputField4("EngineFrom", engineFromController),
                          hideEngineFromList
                              ? selectionField4(
                                  "EngineFrom", engineFromController)
                              : SizedBox()
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          ElevatedButton(
                              child: Text("SEARCH"),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                // padding: EdgeInsets.all(10),
                                fixedSize: Size(188, 57),
                                textStyle: TextStyle(
                                    fontSize: 14.8,
                                    fontWeight: FontWeight.bold),
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton.icon(
                              icon: Icon(Icons.keyboard_double_arrow_left),
                              label: Text("CLEAR"),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                // padding: EdgeInsets.all(10),
                                fixedSize: Size(190, 35),
                                textStyle: TextStyle(fontSize: 14.8),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: Colors.blue),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text("Fuel Type ",
              //             style: TextStyle(
              //                 fontSize: 17,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold)),
              //         // SizedBox(
              //         //   height: 2,
              //         // ),
              //         inputField("Fuel", fuelController),
              //         hideFuelList
              //             ? selectionField("Fuel", fuelController)
              //             : SizedBox()
              //       ],
              //     ),
              //   ],
              // ),

              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text("Location ",
              //             style: TextStyle(
              //                 fontSize: 17,
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold)),
              //         // SizedBox(
              //         //   height: 2,
              //         // ),
              //         inputField("Location", locationController),
              //         hideLocationList
              //             ? selectionField("Location", locationController)
              //             : SizedBox()
              //       ],
              //     ),
              //   ],
              // ),

              // SizedBox(
              //   width: 10,
              // ),

              // Container(
              //   padding: EdgeInsets.only(top: 3),
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(top: 22),
              //         child: Row(children: [
              //           Checkbox(
              //             fillColor: MaterialStateColor.resolveWith(
              //               (Set<MaterialState> states) {
              //                 if (states.contains(MaterialState.disabled)) {
              //                   return Colors.black;
              //                 }
              //                 return Colors.black;
              //               },
              //             ),
              //             checkColor: Colors.blue,
              //             value: check1,
              //             onChanged: (value) {
              //               setState(() {
              //                 check1 = value!;
              //               });
              //             },
              //             side: MaterialStateBorderSide.resolveWith(
              //               (states) => const BorderSide(
              //                   width: 1.0, color: Colors.black),
              //             ),
              //           ),
              //           Text("Favourite",
              //               style:
              //                   TextStyle(color: Colors.black, fontSize: 17)),
              //         ]),
              //       ),
              //       SizedBox(
              //         width: 18,
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text("Trans ",
              //               style:
              //                   TextStyle(fontSize: 17, color: Colors.black)),
              //           // SizedBox(
              //           //   height: 2,
              //           // ),
              //           inputField1("Trans", transmissionController),
              //           hideTransmissionList
              //               ? selectionField1("Trans", transmissionController)
              //               : SizedBox()
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text("Mileage (kms): ",
              //             style: TextStyle(fontSize: 17, color: Colors.white)),
              //         // SizedBox(
              //         //   height: 2,
              //         // ),
              //         NumberInputWithIncrementDecrement(
              //           controller: TextEditingController(),
              //           min: -100000,
              //           max: 100000,
              //         ),
              //         inputField("Condition", conditionController),
              //         hideConditionList
              //             ? selectionField("Condition", conditionController)
              //             : SizedBox()
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
          //   ],
          // ),
        ),
      ),
    );
  }

  Widget inputField(String type, TextEditingController controller) {
    return Container(
      width: 380,
      height: 38,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            bottom: 12.5,
            left: 17,
          ),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: type == "Make"
              ? 'All Makes'
              : type == "Model"
                  ? 'All Models'
                  : type == "Fuel"
                      ? 'Select Fuel Type'
                      : type == "Location"
                          ? 'Select Location'
                          : '',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                switch (type) {
                  case "Make":
                    hideMakeList = !hideMakeList;
                    break;
                  case "Model":
                    hideModelList = !hideModelList;
                    break;
                  case "Fuel":
                    hideFuelList = !hideFuelList;
                    break;
                  case "Location":
                    hideLocationList = !hideLocationList;
                    break;
                }
                // hideMakeList = !hideMakeList;
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget inputField1(String type, TextEditingController controller) {
    return Container(
      width: 240,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: 'Select Transmission',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                hideTransmissionList = !hideTransmissionList;
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget inputField2(String type, TextEditingController controller) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: type == 'YearFrom'
              ? 'All'
              : type == 'ConditionFrom'
                  ? '3.5'
                  : '',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                switch (type) {
                  case "YearFrom":
                    hideYearFromList = !hideYearFromList;
                    break;
                  case "ConditionFrom":
                    hideConditionFromList = !hideConditionFromList;
                    break;
                }
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget inputField3(String type, TextEditingController controller) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: type == 'YearTo'
              ? 'All'
              : type == 'ConditionTo'
                  ? 'S'
                  : '',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                switch (type) {
                  case "YearTo":
                    hideYearToList = !hideYearToList;
                    break;
                  case "ConditionTo":
                    hideConditionToList = !hideConditionToList;
                    break;
                }
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget inputField4(String type, TextEditingController controller) {
    return Container(
      width: 170,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: 'Lowest',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                hideEngineFromList = !hideEngineFromList;
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget inputField5(String type, TextEditingController controller) {
    return Container(
      width: 170,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
          hintText: 'Highest',
          border: InputBorder.none,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                hideEngineToList = !hideEngineToList;
              });
            },
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  // Widget inputField0(String type, TextEditingController controller) {
  //   return Container(
  //     width: 380,
  //     height: 40,
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.grey),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(6)),
  //     child: TextField(
  //       readOnly: true,
  //       controller: controller,
  //       decoration: InputDecoration(
  //         contentPadding: EdgeInsets.all(10),
  //         // hintText: type == "Make" ? 'Select Makes' : type == "Model" ? 'Select Model':,
  //         hintText: 'All',
  //         border: InputBorder.none,
  //         suffixIcon: GestureDetector(
  //           onTap: () {
  //             setState(() {
  //               switch (type) {
  //                 case "Make":
  //                   hideMakeList = !hideMakeList;
  //                   break;
  //                 case "Model":
  //                   hideModelList = !hideModelList;
  //                   break;
  //               }
  //               // hideMakeList = !hideMakeList;
  //             });
  //           },
  //           child: Icon(Icons.keyboard_arrow_down),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget inputField-1() {
  //   return Container(
  //     width: 180,
  //     height: 50,
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.grey),
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(6)),
  //     child: TextField(
  //       readOnly: true,
  //       controller: controller,
  //       decoration: InputDecoration(
  //         contentPadding: EdgeInsets.all(10),
  //         hintText: ('Select Model'),
  //         border: InputBorder.none,
  //         suffixIcon: GestureDetector(
  //           onTap: () {
  //             setState(() {
  //               hideModelList = !hideModelList;
  //             });
  //           },
  //           child: Icon(Icons.keyboard_arrow_down),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget selectionField(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "Make"
              ? makesList.length
              : type == "Model"
                  ? modelList.length
                  : type == "Fuel"
                      ? fuelList.length
                      : type == "Location"
                          ? locationList.length
                          : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  switch (type) {
                    case "Make":
                      controller.text = makesList[index];
                      break;
                    case "Model":
                      controller.text = modelList[index];
                      break;
                    case "Fuel":
                      controller.text = fuelList[index];
                      break;
                    case "Location":
                      controller.text = locationList[index];
                      break;
                  }

                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(type == "Make"
                    ? makesList[index]
                    : type == "Model"
                        ? modelList[index]
                        : type == "Fuel"
                            ? fuelList[index]
                            : type == "Location"
                                ? locationList[index]
                                : ''),
              ),
            );
          }),
        ));
  }

  Widget selectionField1(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "Trans" ? transmissionList.length : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  controller.text = transmissionList[index];
                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(transmissionList[index]),
              ),
            );
          }),
        ));
  }

  Widget selectionField2(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "YearFrom"
              ? yearFromList.length
              : type == "ConditionFrom"
                  ? conditionFromList.length
                  : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  switch (type) {
                    case "YearFrom":
                      controller.text = yearFromList[index];
                      break;
                    case "ConditionFrom":
                      controller.text = conditionFromList[index];
                      break;
                  }

                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(type == "YearFrom"
                    ? yearFromList[index]
                    : type == "ConditionFrom"
                        ? conditionFromList[index]
                        : ''),
              ),
            );
          }),
        ));
  }

  Widget selectionField3(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "YearTo"
              ? yearToList.length
              : type == "ConditionTo"
                  ? conditionToList.length
                  : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  switch (type) {
                    case "YearTo":
                      controller.text = yearToList[index];
                      break;
                    case "ConditionTo":
                      controller.text = conditionToList[index];
                      break;
                  }

                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(type == "YearTo"
                    ? yearToList[index]
                    : type == "ConditionTo"
                        ? conditionToList[index]
                        : ''),
              ),
            );
          }),
        ));
  }

  Widget selectionField4(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "EngineFrom" ? engineFromList.length : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  controller.text = engineFromList[index];
                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(engineFromList[index]),
              ),
            );
          }),
        ));
  }

  Widget selectionField5(String type, TextEditingController controller) {
    return Container(
        height: 160,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
          itemCount: type == "EngineTo" ? engineToList.length : 0,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  controller.text = engineToList[index];
                  // controller.text = (makesList[index]).toString();
                });
              },
              child: ListTile(
                title: Text(engineToList[index]),
              ),
            );
          }),
        ));
  }

  // Widget selectionField0() {
  //   return Container(
  //       height: 200,
  //       width: 180,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(9),
  //           color: Colors.white,
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.grey.withOpacity(0.3),
  //               spreadRadius: 1,
  //               blurRadius: 3,
  //               offset: Offset(0, 1),
  //             )
  //           ]),
  //       child: ListView.builder(
  //         itemCount: modelList.length,
  //         itemBuilder: ((context, index) {
  //           return GestureDetector(
  //             onTap: () {
  //               setState(() {
  //                 controller.text = (modelList[index]).toString();
  //               });
  //             },
  //             child: ListTile(
  //               title: Text(modelList[index]),
  //             ),
  //           );
  //         }),
  //       ));
  // }
}
