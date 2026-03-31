import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

AppBar CustomAppBar({
  bool showSearch = true,
  bool showNotification = false,
  bool showAvatar = true,
}) {
  return AppBar(
    backgroundColor: screenColor,
    leading: Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, color: eleBtnColor),
        );
      },
    ),
    title: Text(
      "UBIT Hub",
      style: TextStyle(
        color: eleBtnColor,
        fontSize: 25,
        fontWeight: FontWeight.w900,
      ),
    ),
    actions: [
      if (showSearch) ...[
        Icon(Icons.search, color: eleBtnColor),
        SizedBox(width: 10),
      ],

      if (showNotification) ...[
        Icon(Icons.notifications, color: eleBtnColor),
        SizedBox(width: 10),
      ],

      if (showAvatar) ...[
        CircleAvatar(
          backgroundColor: eleBtnColor,
          child: Text(
            "SA",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: 10),
      ],
    ],
  );
}