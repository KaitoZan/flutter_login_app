// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_login_app/views/login_ui.dart';

class SigUpUi extends StatefulWidget {
  const SigUpUi({super.key});

  @override
  State<SigUpUi> createState() => _SigUpUiState();
}

class _SigUpUiState extends State<SigUpUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Align(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Get On Board!',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'create your profile to start your journey.',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                          ),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(fontFamily: 'Kanit'),
                          prefixIcon: Icon(Icons.person_outline)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'E-Mail',
                          hintStyle: TextStyle(fontFamily: 'Kanit'),
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Phone No',
                          hintStyle: TextStyle(fontFamily: 'Kanit'),
                          prefixIcon: Icon(Icons.tag)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Password',
                          hintStyle: TextStyle(fontFamily: 'Kanit'),
                          prefixIcon: Icon(Icons.fingerprint)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'SIGNUP',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Kanit'),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 1,
                            MediaQuery.of(context).size.height * 0.06,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(fontFamily: 'Kanit'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/googlelogo.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text(
                            '   Sign-In with Google',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Kanit'),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 1,
                            MediaQuery.of(context).size.height * 0.06,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alreaady have an Account?  ",
                          style: TextStyle(fontFamily: 'Kanit'),
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginUi(),
                              ),
                            ),
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.blue, fontFamily: 'Kanit'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 45,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
