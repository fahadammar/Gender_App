import 'package:flutter/material.dart';

//* SCREENS
import 'package:Gender_App/Screens/nameScreen.dart';
import 'package:Gender_App/Widgets/FirstPage.dart';

//? External Modules
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  //! ID of the first Screen
  static final id = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              //! Upper Header Text
              Padding(
                padding: EdgeInsets.only(right: 120.0, top: 20.0),
                child: Center(
                  child: Text(
                    "Gender Predictor",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(
                      color: HexColor("#B24592"),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              //! Below Body
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                child: Container(
                  //* Height & Width
                  width: 700,
                  height: 620,
                  //? Decoration Of The Container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.8],
                      colors: [
                        HexColor("#085078"),
                        // HexColor("#ff4e50"),
                        HexColor("#85d8ce"),
                      ],
                    ),
                  ),
                  //* PAGEVIEW
                  child: PageView(
                    children: [
                      FirstPage(),
                      NameSuggest(),
                    ],
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
