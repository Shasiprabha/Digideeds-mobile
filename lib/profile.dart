import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profile createState() => _profile();
}

class _profile extends State<profile> {
  final TextEditingController _tokensController = TextEditingController();
  final TextEditingController _timePeriodController = TextEditingController();

  @override
  void dispose() {
    _tokensController.dispose();
    _timePeriodController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Land Details',
          style: TextStyle(
            color: Color.fromARGB(215, 213, 211, 198),
          ),
        ),
        //title: Text('Land Details'),
        backgroundColor: Color.fromARGB(255, 7, 87, 98),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 40, 227, 221), // Darker color
              Color.fromARGB(255, 68, 137, 205),
            ], // Adjust gradient colors
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'lib/assets/download (3).jpg', // Replace with your image file path
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  'Land Location:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                const Text(
                  'Kottawa, Colombo',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                const Text(
                  'Land Size:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                const Text(
                  '22ft x 30ft',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                const Text(
                  'Price:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                const Text(
                  'Rs. 2,54,000,000',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                const Text(
                  'Description:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                const Text(
                  'This land is located in a prime area near Kottawa, Colombo. It has dimensions of 22ft x 30ft and is suitable for residential or commercial use.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _tokensController,
                  decoration: InputDecoration(
                    labelText: 'Number of Tokens',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _timePeriodController,
                  decoration: InputDecoration(
                    labelText: 'Time Period (Months)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                Center(
                  // Wrap ElevatedButton with Center widget
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                      int tokens = int.tryParse(_tokensController.text) ?? 0;
                      int timePeriod =
                          int.tryParse(_timePeriodController.text) ?? 0;

                      // Print the values for debugging purposes
                      print('Tokens: $tokens');
                      print('Time Period: $timePeriod');
                      print('Your request is sent!');
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40), // Adjust horizontal padding
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
