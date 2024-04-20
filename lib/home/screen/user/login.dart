import 'package:ecommerce_app/home/screen/user/signup_page.dart';
import 'package:ecommerce_app/home/screen/user/user_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extra.dart';
import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var password = TextEditingController();
  var username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
            RadialGradient(center: Alignment.topLeft, radius: 0.8, colors: [
              Color(0xff484C57),
              Color(0xff1F2125),
            ])),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: username,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Username',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                  controller: password,
                  obscureText: _passwordVisible ? true : false,
                  obscuringCharacter: '•',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    prefixIcon: Icon(
                      Icons.lock_open_rounded,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  String User = username.text.toString();
                  String pass = password.text.toString();
                  for(int i=0; i< UserList.length; i++)
                    {
                      if(UserList[i]['user']==User && UserList[i]['pass']==pass)
                      {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => Home_Screen(),
                          ),
                        );
                      }
                      else
                      {
                        showCustomToast(context,Icons.warning_amber_rounded,'Enter Vaild Username & Password');
                      }
                    }
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.white38, width: 1),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff32343b),
                        Color(0xff1c1e22),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to signup screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Home_Screen(),
                    ),
                  );
                  // Navigator.of(context).pushNamed('/home');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 15,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


bool _passwordVisible=false;