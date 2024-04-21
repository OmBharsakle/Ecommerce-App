import 'package:ecommerce_app/home/screen/user/user_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../extra.dart';
import '../home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var NewPassword = TextEditingController();
  var NewUsername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient:
            RadialGradient(center: Alignment.topLeft, radius: 0.8, colors: [
              Color(0xff484C57),
              Color(0xff1F2125),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'PixelsCo.',
              //   style: GoogleFonts.poppins(
              //     textStyle: const TextStyle(
              //         fontWeight: FontWeight.w700,
              //         fontSize: 22,
              //         letterSpacing: 2,
              //         color: Colors.white),
              //   ),
              // ),
              //user name text box
              Container(
                child: TextField(
                  controller: NewUsername,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Username',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //email name text box
              Container(
                child: TextField(
                  // controller: username,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //password name text box
              Container(
                child: TextField(
                  controller: NewPassword,
                  obscureText: _passwordVisible ? true : false,
                  obscuringCharacter: '•',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
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
                    prefixIcon: const Icon(
                      Icons.lock_open_rounded,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //Register box
              InkWell(
                onTap: () {
                  setState(() {
                    String NewUser = NewUsername.text.toString();
                    String NewPass = NewPassword.text.toString();
                    if((NewUser != '' && NewPass != ''))
                      {
                        UserList.add({"user" :NewUser,"pass":NewPass});
                        Navigator.pop(context);
                      }
                    else if(NewUser == '' && NewPass == '')
                      {
                        showCustomToast(context, Icons.error_outline,
                            'Enter Your Username & Password');
                      }
                    else if(NewPass == '')
                      {
                        showCustomToast(context, Icons.error_outline,
                            'Enter Your Password');
                      }
                    else
                      {
                        showCustomToast(context, Icons.error_outline,
                            'Enter Your Username');
                      }
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.white38, width: 1),
                    gradient: const LinearGradient(
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
                        'Register Now',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
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
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigate to signup screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SignupScreen()),
                  // );
                },
                child: Text(
                  'Already Have An Account? Log In',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Row(
              //     children: <Widget>[
              //       Expanded(
              //           child: Divider()
              //       ),
              //
              //       Text(
              //          '>    Or Continue With    <',
              //         style: GoogleFonts.poppins(
              //           textStyle: const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //
              //       Expanded(
              //           child: Divider()
              //       ),
              //     ]
              // )

            ],
          ),
        ),
      ),
    );
  }
}


bool _passwordVisible=true;