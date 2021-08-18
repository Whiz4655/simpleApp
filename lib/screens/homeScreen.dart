import 'package:flutter/material.dart';
import 'package:simpleapp/screens/displayScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = new TextEditingController();
  final ageController = new TextEditingController();
  final occupationController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              
              children: [
                 SizedBox(height: 70,),
                Text(
                  'Enter your Details',
                  style: TextStyle(fontSize: 25),
                ),
                 SizedBox(height: 30,),
                TextField(
 decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.deepPurple,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                    ),
                    ),
                  controller: nameController,
                ),
                 SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: TextStyle(
                      color: Colors.deepPurple,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                    ),
                    ),
                  controller: ageController,
                ),
                 SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Occupation',
                    hintStyle: TextStyle(
                      color: Colors.deepPurple,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                    ),
                    ),
                  controller: occupationController,
                ),
                MaterialButton(
                  onPressed: () {
                    var name = nameController.text;
                    var age = ageController.text;
                    var occupation = occupationController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                               DisplayScreen(enteredName: name, enteredAge: age, enteredOccupation: occupation,) ));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
