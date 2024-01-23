import 'package:flutter/material.dart';
import 'package:uaspemmob/homepage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:uaspemmob/register.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;
  bool isButtonEnabled = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void checkFields() {
    setState(() {
      if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
        isButtonEnabled = true;
      } else {
        isButtonEnabled = false;
      }
    });
  }

  void showEmptyFieldNotification() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Email and password cannot be empty!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Future<void> loginUser() async {
    try {
      final response = await http.post(
        Uri.parse('http://10.0.5.176/database/login.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'POST, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type',
        },
        body: jsonEncode(<String, String>{
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        if (data.containsKey('status')) {
          if (data['status'] == 'success') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );

            // Tampilkan notifikasi bahwa login berhasil
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Login successful!'),
                duration: Duration(seconds: 2),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(data['message'] ?? 'Login failed'),
                duration: Duration(seconds: 2),
              ),
            );
          }
        } else {
          print('Invalid JSON format from server');
        }
      } else {
        print('Failed to connect to the server. Error: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal login'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      print('Exception during login: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An unexpected error occurred'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 450,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFE8F0FA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 331,
                child: Text(
                  'Hello! Glad to see you!',
                  style: TextStyle(
                    color: Color(0xFF1E232C),
                    fontSize: 30,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                    letterSpacing: -0.30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 150), // Space between text and email field
              Container(
                width: 331,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFFB2DFDB),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Color(0xFF00C853)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {
                      checkFields();
                    },
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Color(0xFF01579B),
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Space between email field and password field
              Container(
                width: 331,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFFB2DFDB),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Color(0xFF00C853)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: passwordController,
                    obscureText: isPasswordVisible,
                    onChanged: (value) {
                      checkFields();
                    },
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: Color(0xFF01579B),
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50), // Space between password field and buttons
              GestureDetector(
                onTap: isButtonEnabled
                    ? () {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    showEmptyFieldNotification();
                  } else {
                    loginUser(); // Call the loginUser function to perform authentication
                  }
                }
                    : null,
                child: Container(
                  width: 331,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Color(0xFF84A1C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 100), // Space between login button and Register Now text
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text(
                  'Don’t have an account? Register Now',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}