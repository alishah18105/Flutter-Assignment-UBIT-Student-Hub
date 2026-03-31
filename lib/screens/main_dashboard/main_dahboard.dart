import 'package:flutter/material.dart';
import 'package:university_student_hub/screens/main_dashboard/custom_appBar.dart';
import 'package:university_student_hub/screens/main_dashboard/cutom_dashboard_screen.dart';
import 'package:university_student_hub/screens/market_place/market_place.dart';
import 'package:university_student_hub/screens/profile_screen/profile_screen.dart';
import 'package:university_student_hub/utilis/colors.dart';

class MainDahboard extends StatefulWidget {

  MainDahboard({super.key});

  @override
  State<MainDahboard> createState() => _MainDahboardState();
}

class _MainDahboardState extends State<MainDahboard> {
  final List<Map<String, String>> items = [
  {
    "image": "assets/images/uok.png",
    "title": "Admission for Fall",
    "subtitle": "Apply now for Fall intake",
  },
  {
    "image": "assets/images/career.jpg",
    "title": "Career Connect",
    "subtitle": "Explore career opportunities",
  },
  {
    "image": "assets/images/ai.jpg",
    "title": "AI & Ethics Workshop",
    "subtitle": "Learn about AI ethics",
  },
];

 int selectedIndex = 0;
   late List<Widget> screens;


  final List<IconData> icons = [
    Icons.home,
    Icons.store,
    Icons.person,
  ];

  final List<String> labels = [
    "Home",
    "Marketplace",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
     final screens = [
    DashboardScreen(items: items),
    MarketPlace(),
    ProfileScreen(),
  ];
    return Scaffold(
      appBar: CustomAppBar(),
      body: screens[selectedIndex],
      floatingActionButton: selectedIndex == 1 ? FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white,),
         backgroundColor: eleBtnColor,
        label: Text("Sell Items", style: TextStyle(color: Colors.white),),
      ): FloatingActionButton(onPressed: (){},
      backgroundColor: eleBtnColor,
      child: Icon(Icons.add, color: Colors.white,)),
      bottomNavigationBar: Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            bool isSelected = selectedIndex == index;
      
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Color(0xFF1E4FA3)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icons[index],
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    labels[index],
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected
                          ? Color(0xFF1E4FA3)
                          : Colors.grey,
                    ),
                  )
                ],
              ),
            );
          }
          )
        )
      )
    );
  }

}