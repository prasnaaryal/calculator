import 'package:flutter/material.dart';
 
 
class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});
 
  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}
 
class _LoginScreenViewState extends State<LoginScreenView> {
  final key = GlobalKey<FormState>();
 final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/login1.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment(1, 0),
                      ),
                    ),
 
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          // child: SingleChildScrollView(
          //   keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
           
              // child: Stack(
                children: [
                  // Container(
                  //   height: MediaQuery.of(context).size.height,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/login.png"),
                  //       fit: BoxFit.cover,
                  //       alignment: Alignment(1, 0),
                  //     ),
                  //   ),
                  // ),
                 
                 
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 300),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Color.fromARGB(255, 18, 54, 120), fontSize: 33,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.46,
                          right: 35,
                          left: 35),
                      child: Form(
                        key: key,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                suffix: Icon(Icons.remove_red_eye_rounded),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 600, left: 100),
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          // Validation passed, perform the login action
                          // For example, you can check the email and password against your authentication system
                          Navigator.pushNamed(context, '');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 18, 54, 120),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          "     Login     ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 670, left: 100),
                    child: Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                             Navigator.pushNamed(context, '');
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
             
           
          // ),
        ),
      ),
    );
  }
}