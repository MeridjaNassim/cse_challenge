import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  
  final String description ;
  Description(this.description);
  final descriptionStyle = TextStyle(
    color: Colors.black
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        margin: EdgeInsets.all(10),
        child: Text(description,style:descriptionStyle,textAlign: TextAlign.center,),
      ),
    );
  }
}