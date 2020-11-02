import 'package:flutter/material.dart';

//? External Modules
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class GenderResult extends StatelessWidget {
  //* Variables
  var yoController;
  String genderName;

  //! Constructor with the named paramters/arguments
  GenderResult({this.yoController, this.genderName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 35, 10, 0),
      //? Outer Container with the LightGold Color of BackGround
      child: Container(
        width: 200,
        height: 200,
        //* Decoration of the Container
        decoration: BoxDecoration(
          //? Gradient Color Of The Container
          gradient: LinearGradient(
            colors: [
              HexColor("#ffbf00"),
              HexColor("#ffcf40"),
            ],
            stops: [0.2, 0.7],
          ),
          //? Border Of the Container
          border: Border.all(
            color: Colors.amberAccent.shade700,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        //! Child of the Container- Showing Gender & Name
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //* Showing Name
            Container(
              child: Text(
                "${this.yoController}",
                textAlign: TextAlign.center,
                style: GoogleFonts.questrial(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //? Showing Gender
            Container(
              child: Text(
                "Gender:  ${this.genderName}",
                style: GoogleFonts.questrial(
                  fontSize: 18,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
