import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onBoarding.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/signin-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.fromLTRB(40, 100, 0, 0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
            ),
            color: Color.fromRGBO(53, 83, 88, 1)),
        child: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Text('Sign In',
                    style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text('Name',
                    style: GoogleFonts.ubuntu(color: Colors.white)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text('E-mail',
                    style: GoogleFonts.ubuntu(color: Colors.white)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                width: 280,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter E-Mail',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text('Password',
                    style: GoogleFonts.ubuntu(color: Colors.white)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(255, 255, 205, 55)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(OnBoarding.routeName);
                    },
                    child: Text('Sign In',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Already account?",
                    style:
                        GoogleFonts.ubuntu(color: Colors.white, fontSize: 15),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Text(
                      " LOG IN",
                      style: GoogleFonts.ubuntu(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
