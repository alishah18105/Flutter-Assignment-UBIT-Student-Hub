import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? selectedDepartment;
  List<String> departments = [
    "Computer Science",
    "Chemistry",
    "Biotechnology",
    "Electrical Engineering",
    "Mechanical Engineering",
    "Civil Engineering",
    "Business Administration",
    "Economics",
    "Psychology",
    "Biology"
  ];

  String? gender = "Male";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0 ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 30,),
              Text("CAMPUS ECONOMY", style: TextStyle(color: eleBtnColor, fontSize: 10, fontWeight: FontWeight.w900),),
              SizedBox(height: 5,),
              Text("Syed Ali Sultan", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),),
              SizedBox(height: 3,),
              Text("Bachelor of Science in Software Engineering", style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Container(
                height: 25,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[100]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.verified_outlined, color: textColor, size: 12,),
                    SizedBox(width: 5,),
                    Text("Verified Student", style: TextStyle(color: textColor, fontSize: 11, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: TabBar(
                  labelColor: eleBtnColor,
                  unselectedLabelColor: textColor,
                  indicatorColor: eleBtnColor,
                  tabs: [
                    Tab(text: "Personal Info",),
                    Tab(text: "Academic Info",),
                    Tab(text: "Courses Enrolled",)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 450,
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.person_2_outlined, color: Colors.black, size: 30,),
                                SizedBox(width: 10,),
                                Text("Personal Information", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Text("Student Name", style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Name",
                                filled: true,
                                fillColor: fieldColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Student ID", style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "BSSE-12345",
                                filled: true,
                                fillColor: fieldColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                             SizedBox(height: 20,),
                            Text("Department Selection", style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            DropdownButtonFormField<String>(
                            initialValue: selectedDepartment,
                            hint: Text("Select Category"),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            items: departments.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedDepartment = value;
                              });
                            },
                          ),
                          SizedBox(height: 20,),
                          Text("Gender Selection", style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5,),
                          Row(
                                children: [
                                  Row(
                                    children: [
                                      Radio(value: "Male", 
                                      activeColor: textColor,
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value;
                                        });
                                      }),
                                      Text("Male", style: TextStyle(color: textColor),)
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Radio(value: "Female", 
                                      activeColor: textColor,
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value;
                                        });
                                      }),
                                      Text("Female", style: TextStyle(color: textColor),)
                                    ],
                                  ),
                                ],),
                                                      ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(height: 20,),
              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(onPressed: (){}, child: Text("Cancel", style: TextStyle(color: eleBtnColor, fontWeight: FontWeight.bold),)),
                                    SizedBox(width: 10,),
                                  ElevatedButton(onPressed: (){}, child: Text("Save Changes", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), style: ElevatedButton.styleFrom(
                                    backgroundColor: eleBtnColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    )
                                  ),)
                                ],
                              )
            
              ],
            ),
          ),
        ) 
      ),
    );
  }
}