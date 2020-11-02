import 'package:Gender_App/Widgets/FlatBtn.dart';
import 'package:Gender_App/Widgets/GenderResult.dart';
import 'package:Gender_App/Widgets/nameInput.dart';
import 'package:flutter/material.dart';

//* API
import 'package:Gender_App/API/getGender.dart';

class GenderApp extends StatefulWidget {
  //! ID of the Gender Screen
  static final id = '/gender';

  // Gender variable
  String genderName;

  @override
  _GenderAppState createState() => _GenderAppState();
}

class _GenderAppState extends State<GenderApp> {
  //? TEXT EDITING CONTROLLER
  TextEditingController yoController = TextEditingController();

  //* OnPress Function
  void handlePress() async {
    final gender = await getGender(this.yoController.text);
    //! JUST FOR RE-RENDERING
    setState(
      () {
        widget.genderName = gender;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          //* Children of Widgets
          children: [
            // Upper Sized Box
            SizedBox(
              height: 50,
            ),

            //* Container of TextField
            NameInput(
              yoController: this.yoController,
            ),

            //! If To Check Whether the Gender Is Not null
            if (widget.genderName != null && yoController.text != null)
              //* Gender Result Widget
              GenderResult(
                yoController: yoController.text,
                genderName: widget.genderName,
              ),

            // Lower Sized Box
            SizedBox(
              height: 60,
            ),

            //? FlatButton to submit
            Btn(
              msg: "Submit",
              handlePress: this.handlePress,
            ),
          ],
        ),
      ),
    );
  }
}
