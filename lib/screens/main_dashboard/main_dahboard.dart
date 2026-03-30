import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: screenColor,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: eleBtnColor,)),
        title: Text("UBIT Hub", style: TextStyle(color: eleBtnColor, fontSize: 25, fontWeight: FontWeight.w900),),
        actions: [
          Icon(Icons.search, color: textColor,),
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: eleBtnColor,
            child: Text("SA", style: TextStyle(color: Colors.white),),
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text("Welcome, Syed Ali Sultan", style: TextStyle(color: eleBtnColor, fontSize: 30, fontWeight: FontWeight.w900),),
              SizedBox(height: 10,),
              Text("Your academic architect dashboard is ready", style: TextStyle(color: textColor),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 150,
                    width: 160,
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      margin: EdgeInsets.all(10),
                       shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                                  ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CURRENT GPA", style: TextStyle(color: textColor,fontSize: 15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,),
                            Text("3.53", style: TextStyle(color: eleBtnColor, fontSize: 30, fontWeight: FontWeight.w900),)
                          ],
                        ),
                      )
                    ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                    height: 150,
                    width: 160,
                    child: Card(
                      color: eleBtnColor,
                      elevation: 10,
                      margin: EdgeInsets.all(10),
                       shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                                  ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEXT CLASS", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,),
                            Text("CS 401", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                            Text("10:30 AM . Hall B", style: TextStyle(color: Colors.white, fontSize: 10),)
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Campus News", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
                  TextButton(onPressed: (){}, child: Text("View All", style: TextStyle(fontSize: 15, color: eleBtnColor),))
                ],
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.white,
                elevation: 10,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(child: Image.asset("assets/images/department.jpg", fit: BoxFit.cover,)),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ACADEMIC", style: TextStyle(fontSize: 15, color: textColor),),
                          SizedBox(height: 10,),
                          Text("New Research Grant Awarded to Engineering Faculty", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("The \$2.4M grant will funt sustainable energy intiatives across the campusfor th...", style: TextStyle(color: subTextColor),),
                          SizedBox(height: 15,),
                        ],
                      ),
                    )
          
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 250,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                                    ),
                  elevation: 10,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                            height: 100,
                            width: 75,
                            child: Image.asset(items[index]["image"]!, fit: BoxFit.cover,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            
                          ),
                          title: Text(items[index]["title"]!, style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text(items[index]["subtitle"]!, style: TextStyle(fontSize: 12),),
                          trailing: Icon(Icons.arrow_forward_rounded),
                        ),
                      );
                    }),
                ),
              )
          
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add, color: Colors.white,),
      backgroundColor: eleBtnColor,),
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