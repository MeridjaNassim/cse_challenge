import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback _onTap;
  CustomInkWell(this.icon,this.text,this._onTap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue[200],
      onTap:_onTap ,
      child: ListTile(
        leading: Icon(icon,color: Colors.blue[200],size: 40,),
        title: Text(text,style: TextStyle(
          fontSize: 20,
          color: Colors.grey
        ),),
      ),
    );
  }
}