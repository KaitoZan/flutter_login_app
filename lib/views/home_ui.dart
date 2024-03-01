// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_login_app/views/login_ui.dart';
import 'package:flutter_login_app/views/signup_ui.dart';
class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.amber,
      backgroundColor: Color.fromARGB(255, 32, 165, 165),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox( height: MediaQuery.of(context).size.height * 0.1),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment:Alignment.center,
                child: Text(
                  'Build Awesome App',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: MediaQuery.of(context).size.height * 0.037,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 210, 210, 210),
                  ),
                ),
              ),
              Text(
                "let\'s put your creativity on the",
                 style: TextStyle(
                    fontFamily: 'Kanit',
                    color: const Color.fromARGB(255, 210, 210, 210),
                  ),
              ),
              Text(
                'DTI SAU 2024 (T_T)',
                 style: TextStyle(
                    fontFamily: 'Kanit',
                    color: const Color.fromARGB(255, 210, 210, 210),
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                      MaterialPageRoute(
                       builder: (context) => LoginUi(),
          ),),
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 210, 210, 210),
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.35,
                        MediaQuery.of(context).size.height * 0.05
                      ),
                      backgroundColor: Color.fromARGB(255, 32, 165, 165),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color.fromARGB(0, 0, 0, 0)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                 ElevatedButton(
                    onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                      MaterialPageRoute(
                       builder: (context) => SigUpUi(),
          ),),
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 210, 210, 210),
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.35,
                        MediaQuery.of(context).size.height * 0.05
                      ),
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color.fromARGB(0, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07
              ),
            ],
          )
        ],
      ),
    );
  }
}