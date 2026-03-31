import 'package:flutter/material.dart';
import 'package:university_student_hub/screens/main_dashboard/main_dahboard.dart';
import 'package:university_student_hub/utilis/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool is_checked = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool is_ObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: screenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0), child: CardWidget()),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("© 2024 UBIT", style: TextStyle(color: textColor)),
                Text("Privacy Policy", style: TextStyle(color: textColor)),
                Text("Terms of Service", style: TextStyle(color: textColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card CardWidget() {
    return Card(
      color: Colors.white,
      elevation: 10,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.school, color: eleBtnColor, size: 25),
                SizedBox(width: 10),
                Text(
                  "UBIT Hub",
                  style: TextStyle(
                    fontSize: 20,
                    color: eleBtnColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter your details to sign in",
              style: TextStyle(color: textColor, fontSize: 15),
            ),
            SizedBox(height: 40),
            Form(
              key: GlobalKey<FormState>(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("University Email", style: TextStyle(color: textColor)),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: fieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: subTextColor,
                      ),
                      hintText: "name@university.edu",
                      hintStyle: const TextStyle(color: subTextColor),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Password", style: TextStyle(color: textColor)),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: eleBtnColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: pass,
                    obscureText: is_ObscureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: fieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),

                      prefixIcon: Icon(Icons.lock, color: subTextColor),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            is_ObscureText = !is_ObscureText;
                          });
                        },
                        icon: is_ObscureText
                            ? Icon(Icons.visibility_off, color: subTextColor)
                            : Icon(Icons.visibility_off, color: subTextColor),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: subTextColor),
                    ),
                  ),
                  SizedBox(height: 10),
                  CheckboxListTile(
                    title: Text(
                      "Remember Me",
                      style: TextStyle(color: textColor),
                    ),
                    value: is_checked,
                    onChanged: (bool? value) {
                      setState(() {
                        is_checked = value ?? false;
                      });
                    },
                    controlAffinity:
                        ListTileControlAffinity.leading, // Checkbox on the left
                    contentPadding:
                        EdgeInsets.zero, // Removes extra padding if needed
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainDahboard(),
                          ),
                        );
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: eleBtnColor,
                      minimumSize: Size(200, 60),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                            color: eleBtnColor,
                            fontWeight: FontWeight.bold,
                          ),
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
