import 'package:http/http.dart' as http;
import 'dart:convert';

//------------------------------//
//  Function To Get The Info    //
//  related the name & gender   //
//  Returning the GENDER        //
//------------------------------//
Future<String> getGender(String name) async {
  var data = await http
      .get('API-URL');

  Map genderData = jsonDecode(data.body);
  print("GenderData: $genderData");
  String gender = genderData['gender'];
  print("GenderData: $gender");

  //? Capitalizing The Fist Letter Of The Gender, and Returning Gender
  return gender[0].toUpperCase() + gender.substring(1);
}
