import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

Card ProfileStrengthCard() {
    return Card(
                elevation: 10,
                color: eleBtnColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Profile Strength",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "80%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.8,
                        backgroundColor: Colors.white24,
                        color: Colors.white,
                        minHeight: 10,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Complete your profile to get better course recommendations and connect with like-minded peers.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
