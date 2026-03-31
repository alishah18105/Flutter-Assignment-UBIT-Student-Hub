import 'package:flutter/material.dart';
import 'package:university_student_hub/utilis/colors.dart';

Container PrivacyCard() {
    return Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 150,
                      decoration: BoxDecoration(
                        color: eleBtnColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Privacy Note",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Your department information helps us tailor marketplace recommendations and campus alerts.",
                              style: TextStyle(color: textColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }

