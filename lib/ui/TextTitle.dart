import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  
  final String title;
  TextTitle(this.title);
  final titleStyle = TextStyle(
    fontSize: 30,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:10.0),
        child: Text(title,style: titleStyle,textAlign: TextAlign.center,),
      ),
    );
  }
}