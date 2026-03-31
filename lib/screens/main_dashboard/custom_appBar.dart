import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

AppBar CustomAppBar() {
    return AppBar(
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
    );
  }
