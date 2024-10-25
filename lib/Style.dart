
import 'package:flutter/material.dart';

InputDecoration AppInputDecoration (label){

  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: label


  );
}


ButtonStyle AppButtonStyle(){

  return ElevatedButton.styleFrom(
    primary: Colors.blue, // Background color
    onPrimary: Colors.white, // Text color
    shadowColor: Colors.black, // Shadow color
    elevation: 5, // Elevation
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // Rounded corners
    ),
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),



  );
}


SizedBox SizedBox50(child){

  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );


}