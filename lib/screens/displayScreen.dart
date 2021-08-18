import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final enteredName;
  final enteredAge;
  final enteredOccupation;
  DisplayScreen({required this.enteredName, required this.enteredAge, required this.enteredOccupation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Text(
            'Welcome, \n your informations are as follow',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
           SizedBox(height: 30,),
          RichText(
            text: TextSpan(children:[
              TextSpan(
                text:
            'Name: ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          
              ),
               TextSpan(
                text:
            ' $enteredName',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black54
            ),
          
              ),
            ] ),
            ),
           SizedBox(height: 20,),
          RichText(
            text: TextSpan(children:[
              TextSpan(
                text:
            'Age: ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          
              ),
               TextSpan(
                text:
            ' $enteredAge',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black54
            ),
          
              ),
            ] ),
            ),
           SizedBox(height: 20,),
           RichText(
            text: TextSpan(children:[
              TextSpan(
                text:
            'Occupation: ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          
              ),
               TextSpan(
                text:
            ' $enteredOccupation',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black54
            ),
          
              ),
            ] ),
            ),
         
        ],
      )),
    );
  }
}
