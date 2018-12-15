import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[200],
          child: InkWell(
            child: Row(
               children: <Widget>[
              Container(
                margin: EdgeInsets.all(3),
                child: Icon(Icons.person_add,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.all(3),
                child: Text("FOLLOW",style: 
                TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),       
    
      ),
    ));
  }
}