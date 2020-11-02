import 'package:flutter/material.dart';

//* Widgets
import 'package:Gender_App/Widgets/LetterTextField.dart';
import 'package:Gender_App/Widgets/NameCategories.dart';

//? External Modules
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NameSuggest extends StatefulWidget {
  bool flag = false;

  @override
  _NameSuggestState createState() => _NameSuggestState();
}

class _NameSuggestState extends State<NameSuggest> {
  //* TEXT EDITING CONTROLLER
  TextEditingController yoController = TextEditingController();

  //? Function to setState on Tap
  void onTap() {
    setState(() {
      widget.flag = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          //? Margin of the Container
          margin: EdgeInsets.all(8.0),
          //? Column Containing Containers of Named Categories
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              //* Title Container
              Container(
                margin: EdgeInsets.all(8.0),
                child: Text(
                  "Name Categories",
                  style: GoogleFonts.aclonica(
                    fontSize: 18,
                    color: HexColor("#a8c0ff"),
                  ),
                ),
              ),
              //? 1st Container of the Named Categories
              Container(
                //! 1st Row of Named Categories
                child: Row(
                  children: [
                    NameCategory(
                      categoryName: "Islamic Names",
                      onTap: this.onTap,
                    ),
                    NameCategory(
                      categoryName: "English Names",
                      onTap: this.onTap,
                    ),
                  ],
                ),
              ),
              //! 2nd Container Of the Named Categories
              Container(
                //? 2nd Row of Named Categories
                child: Row(
                  children: [
                    NameCategory(
                      categoryName: "Arabic Names",
                      onTap: this.onTap,
                    ),
                    NameCategory(
                      categoryName: "Turkish Names",
                      onTap: this.onTap,
                    ),
                  ],
                ),
              ),

              if (widget.flag == true)
                //* Msg & TextField
                LetterInput(
                  yoController: this.yoController,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
