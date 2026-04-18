import 'package:assignments/assignments/login_validation.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  final _confirmpwdController = TextEditingController();

  bool isAccept = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _pwdController.dispose();
    _confirmpwdController.dispose();
    super.dispose();
  }

  String? vailidateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Enter your name ';
    }

    return null;
  }

  String? vailidateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Enter your email ';
    }
    String emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    if (!RegExp(emailPattern).hasMatch(email)) {
      return 'Enter valid email';
    }

    return null;
  }

  String? validatePassword(String? pwd) {
    if (pwd == null || pwd.isEmpty) {
      return 'Enter Password ';
    }

    if (pwd.contains(RegExp(r'[A-Z]'))) {
      return 'Passsword must contain atleast one small letter';
    }
    if (pwd.length < 6) {
      return 'Password must contain 6 charecters';
    }
    return null;
  }

  String? validateConfirmPassword(String? pwd) {
    if (pwd == null || pwd.isEmpty) {
      return 'Enter Confirm Password ';
    }
    if (_pwdController.text != pwd) {
      return 'Password must be same';
    }

    return null;
  }

  void register() async {
    if (_formkey.currentState!.validate()) {
      try {
        await Future.delayed(Duration(seconds: 2));
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Register Success"),

              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            height: 900,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.bottomLeft,
                end: AlignmentGeometry.bottomEnd,
                colors: [Colors.greenAccent, Colors.green],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Secure and simple registration",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    controller: _nameController,
                    validator: (value) => vailidateName(_nameController.text),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withValues(alpha: 0.4),
                      filled: true,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (value) => vailidateEmail(_emailController.text),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withValues(alpha: 0.4),
                      filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    obscureText: true,
                    validator: (value) => validatePassword(_pwdController.text),
                    controller: _pwdController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withValues(alpha: 0.4),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    obscureText: true,
                    controller: _confirmpwdController,
                    validator: (value) =>
                        validateConfirmPassword(_confirmpwdController.text),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withValues(alpha: 0.4),
                      filled: true,
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: isAccept,
                        onChanged: (value) {
                          setState(() {
                            isAccept = !isAccept;
                          });
                        },
                      ),
                      Text(
                        "I accept the Terms and Conditions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: register,
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.green),
                        backgroundColor: Colors.greenAccent,
                      ),
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Registered ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginValidation();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Align(
                  //   alignment: AlignmentGeometry.center,
                  //   child: RichText(
                  //     text: TextSpan(
                  //       text: "Already Registered ?",
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.normal,
                  //       ),
                  //       children: [
                  //         TextSpan(
                  //           onEnter: (event) {
                  //             Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) {
                  //                   return LoginValidation();
                  //                 },
                  //               ),
                  //             );
                  //           },
                  //           text: " Log in",
                  //           style: TextStyle(
                  //             color: Colors.greenAccent,
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.normal,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
