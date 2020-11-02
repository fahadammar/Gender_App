import 'package:flutter/material.dart';

//* Widget
import 'NameLetterInput.dart';

//? External Modules
import 'package:google_fonts/google_fonts.dart';

class LetterInput extends StatelessWidget {
  var yoController;

  LetterInput({this.yoController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //? Msg To The User -> Container
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Please Enter Below The Starting Letter You Like For The Name",
              textAlign: TextAlign.justify,
              style: GoogleFonts.abel(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          //* Input Of The Name Letter
          NameLetter(
            yoController: this.yoController,
          )
        ],
      ),
    );
  }
}
