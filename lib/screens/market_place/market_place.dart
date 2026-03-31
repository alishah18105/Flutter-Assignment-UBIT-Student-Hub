import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
   List<String> filters = [
    "All Items",
    "Textbooks",
    "Laptops",
  ];

  String selectedFilter = "All Items";
  final List<Map<String, String>> products = [
  {
    "title": "Sony Headphones",
    "subtitle": "Noise Cancelling Wireless",
    "price": "\$55",
    "tag": "Audio",
    "image":"assets/images/headphone.jpg",
    "category": "Headphones",
  },
  {
    "title": "Smart Watch X",
    "subtitle": "Fitness & Health Tracking",
    "price": "\$45",
    "tag": "Smart",
    "image":"assets/images/smart_watch.png",
    "category": "Watches",
  },
  {
    "title": "Artificial Intelligene Book",
    "subtitle": "Learn AI Concepts",
    "price": "\$10",
    "tag": "Study",
    "image":"assets/images/ai_book.jpg",
    "category": "Books",
  },
  {
    "title": "MacBook 2024",
    "subtitle": "Apple M3 Chip Laptop",
    "price": "\$1250",
    "tag": "Premium",
    "image":"assets/images/macbook2024.jpg",
    "category": "Laptops",
  },
  {
    "title": "Python Data Science Book",
    "subtitle": "Learn data science with Python",
    "price": "\$25",
    "tag": "Study",
    "image":"assets/images/dataSci_book.png",
    "category": "Books",
  },
  {
    "title": "MacBook 2026",
    "subtitle": "Latest Generation MacBook",
    "price": "\$1500",
    "tag": "New",
    "image":"assets/images/macBook16.jpg",
    "category": "Laptops",
  },
  {
    "title": "Lenovo ThinkPad",
    "subtitle": "Business Class Laptop",
    "price": "\$650",
    "tag": "Work",
    "image":"assets/images/lenovo_ideaPad3.jpg",
    "category": "Laptops",
  },
  {
    "title": "HP Pavilion",
    "subtitle": "Everyday Use Laptop",
    "price": "\$500",
    "tag": "Daily",
    "image":"assets/images/thinkpadX13.jpg",
    "category": "Laptops",
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Text("CAMPUS ECONOMY", style: TextStyle(color: eleBtnColor, fontSize: 10, fontWeight: FontWeight.w900),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Marketplace", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),),
              Container(
                height: 25,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue[100]
                ),
                child: Center(child: Text("428 Items", style: TextStyle(color: textColor, fontSize: 12),)),

              )
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: filters.map((filter) {
                    final isSelected = selectedFilter == filter;
            
                    return InputChip(
            label: Text(filter),
            selected: isSelected,
            onSelected: (value) {
              setState(() {
                selectedFilter = filter;
              });
            },
            selectedColor: Color(0xFF1E4FA3),
            backgroundColor: Colors.white38,
            labelStyle: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
                    );
                  }).toList(),
                ),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.60,
            ), itemBuilder: (context, index){
              final product = products[index];
              if(selectedFilter != "All Items" && product["category"] != selectedFilter){
                return SizedBox.shrink();
              }
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.asset(product["image"]!, height: 170, width: double.infinity, fit: BoxFit.cover,),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: eleBtnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(product["price"]!, style: TextStyle(fontSize: 11, color: Colors.white),),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(product["tag"]!, style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      )

                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product["title"]!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text(product["subtitle"]!, style: TextStyle(fontSize: 12, color: textColor),),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }, itemCount: products.length,),
          )
        ],
        ),
      ),
      
    );
  }
}