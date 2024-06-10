import 'package:flutter/material.dart';
import 'package:fyp/rent1.dart';
//import 'package:fyp/sellbuy.dart';
//import 'package:fyp/selltoken1.dart';
//import 'package:fyp/sellbuy1.dart';
//import 'package:fyp/rent1.dart';

class sell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Controllers to capture user input

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 247),
      appBar: AppBar(
        title: const Text('Rent using Tokenization',
            style: TextStyle(
              color: Color.fromARGB(215, 213, 211, 198),
            )),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 65, 4, 65),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'lib/assets/images (1).jpg',
              width: 200, // Adjust width
              height: 150,
              fit: BoxFit.cover, // Adjust height
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => rent1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 225, 195,
                    228), // Set the background color of the button to blue
              ),
              child: Text('Land from Kottawa. 22ft'),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/assets/images (1).jpg',
              width: 200,
              height: 150, // Adjust width
              fit: BoxFit.cover, // Adjust height
            ),
            ElevatedButton(
              onPressed: () {
                // Handle sign-in logic here

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => rent1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 225, 195,
                    228), // Set the background color of the button to blue
              ),
              child: Text('Close to Panadura, two rooms, 2 bathrooms'),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/assets/images (1).jpg',
              width: 200, // Adjust width
              height: 150,
              fit: BoxFit.cover, // Adjust height
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => rent1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 225, 195,
                    228), // Set the background color of the button to blue
              ),
              child: Text('Land of 30ft each, water,electricity'),
            ),
          ],
        ),
      ),
    );
  }
}
