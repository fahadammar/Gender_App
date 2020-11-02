import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NameCategory extends StatelessWidget {
  String categoryName;
  Function onTap;

  NameCategory({this.categoryName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: FlatButton(
        onPressed: () => this.onTap(),
        height: 35,
        minWidth: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Colors.tealAccent[100],
          ),
        ),
        //! Colors of the button
        color: Colors.transparent,
        colorBrightness: Brightness.light,
        splashColor: HexColor('#be5869'),
        child: Text(
          "${this.categoryName}",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
