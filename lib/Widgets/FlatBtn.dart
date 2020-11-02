import 'package:flutter/material.dart';

//? External Modules
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Btn extends StatelessWidget {
  //? Variables
  var msg;
  Function handlePress;

  //! Constructor With the name parameters/arguments
  Btn({this.msg, this.handlePress});

  @override
  Widget build(BuildContext context) {
    //* Container of the FlatButton
    return Container(
      child: FlatButton(
        onPressed: () => this.handlePress(),
        height: 60,
        minWidth: 140,
        //? Shape Of The Button
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: HexColor("#fdeff9"),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        //! Colors of the button
        color: Colors.transparent,
        colorBrightness: Brightness.light,
        splashColor: HexColor('#be5869'),
        //* Child of the Text
        child: Text(
          "${this.msg}",
          style: GoogleFonts.aladin(
            color: HexColor("#fdeff9"),
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
