import 'package:flutter/material.dart';
import 'package:university_student_hub/screens/profile_screen/privacy_card.dart';
import 'package:university_student_hub/screens/profile_screen/profile_strength_card.dart';
import 'package:university_student_hub/screens/profile_screen/submit_btns.dart';
import 'package:university_student_hub/utilis/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  String name = "";
  String id = "";

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
    "Biology",
  ];

  String? gender = "Male";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "STUDENT ACCOUNT",
                  style: TextStyle(
                    color: eleBtnColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Syed Ali Sultan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Bachelor of Science in Software Engineering",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 25,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.verified_outlined, color: textColor, size: 12),
                      SizedBox(width: 5),
                      Text(
                        "Verified Student",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: TabBar(
                    labelColor: eleBtnColor,
                    unselectedLabelColor: textColor,
                    indicatorColor: eleBtnColor,
                    tabs: [
                      Tab(text: "Personal Info"),
                      Tab(text: "Academic Info"),
                      Tab(text: "Courses Enrolled"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 450,
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(child: PersonalInformationCard()),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SubmitBtns(),
                SizedBox(height: 20),
                ProfileStrengthCard(),
                SizedBox(height: 20),
                PrivacyCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card PersonalInformationCard() {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person_2_outlined, color: Colors.black, size: 30),
                SizedBox(width: 10),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Student Name",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hint: Text("Name", style: TextStyle(color: subTextColor)),
                      filled: true,
                      fillColor: fieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onSaved: (value) {
                      name = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Student ID",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "BSSE-12345",
                      filled: true,
                      fillColor: fieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onSaved: (value) {
                      id = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your student ID";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Department Selection",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDepartment = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Gender Selection",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          value: "Male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                          title: Text("Male"),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          value: "Female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                          title: Text("Female"),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
