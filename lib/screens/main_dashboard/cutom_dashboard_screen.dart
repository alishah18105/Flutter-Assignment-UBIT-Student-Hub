import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
    required this.items,
  });

  final List<Map<String, String>> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Stack(children: [
                    Container(child: Image.asset("assets/images/department.jpg", fit: BoxFit.cover,)),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        color: eleBtnColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("FEATURED", style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),),)),
                    )
                    ]
                    ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("ACADEMIC", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),)),
                        
                        
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
    );
  }
}