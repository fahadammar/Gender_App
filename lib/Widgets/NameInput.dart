import 'package:flutter/material.dart';

//? External Modules
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NameInput extends StatelessWidget {
  var yoController;

  NameInput({this.yoController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 350,
      child: TextField(
        controller: this.yoController,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 2.0,
        ),
        // Decoration of the InputTextField
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          // Border
          border: InputBorder.none,
          // On Focus, when user Enter or taps it -> BORDER
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Enter Your Name Here......",
          hintStyle: GoogleFonts.nunito(
            fontSize: 22,
            color: HexColor("#a8c0ff"),
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
