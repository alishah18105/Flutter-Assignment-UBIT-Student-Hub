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

  final List<IconData> icons = [Icons.home, Icons.store, Icons.person];

  final List<String> labels = ["Home", "Marketplace", "Profile"];

  @override
  Widget build(BuildContext context) {
    final screens = [
      DashboardScreen(items: items),
      MarketPlace(),
      ProfileScreen(),
    ];
    return Scaffold(
  appBar: selectedIndex == 1
      ? CustomAppBar(
          showSearch: true,
          showAvatar: false,
          showNotification: true,
        )
      : selectedIndex == 2
          ? CustomAppBar(
              showSearch: false,
              showAvatar: true,
              showNotification: false,
            )
          : CustomAppBar(
              showSearch: true,
              showAvatar: true,
              showNotification: false,
            ),

      drawer: Drawer(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          alignment: Alignment.centerLeft,
          child: Text(
            "UBIT Hub",
            style: TextStyle(
              color: eleBtnColor,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),

      Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.home, color: eleBtnColor),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.store, color: eleBtnColor),
              title: Text('Marketplace'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person, color: eleBtnColor),
              title: Text('Profile'),
              onTap: () {},
            ),
          ],
        ),
      ),

      Divider(),
      ListTile(
        leading: Icon(Icons.logout, color: Colors.red),
        title: Text(
          "Logout",
          style: TextStyle(color: Colors.red),
        ),
        onTap: () {
          showLogoutDialog(context);
        },
      ),
    ],
  ),
),
      body: screens[selectedIndex],
      floatingActionButton: selectedIndex == 1
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white),
              backgroundColor: eleBtnColor,
              label: Text("Sell Items", style: TextStyle(color: Colors.white)),
            )
          :selectedIndex == 2
        ? null : FloatingActionButton(
              onPressed: () {},
              backgroundColor: eleBtnColor,
              child: Icon(Icons.add, color: Colors.white),
            ),
      bottomNavigationBar: Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(color: Colors.white),
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
                      color: isSelected ? Color(0xFF1E4FA3) : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.red[100],
          child: Icon(Icons.logout_outlined, color: Colors.red, size: 25,)),
        title: Text("Sign out?", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
        content: Text("Are you sure you want to logout?"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: fieldColor,
          ),
          child: Text("No, stay", style: TextStyle(color: eleBtnColor, fontWeight: FontWeight.bold),)),
          
          ElevatedButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: eleBtnColor,
          ),
          child: Text("Yes, logout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          
        ],
      );
    },
  );
}