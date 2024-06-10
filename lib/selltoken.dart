import 'package:flutter/material.dart';
import 'package:fyp/token2.dart';
import 'package:fyp/select.dart';
import 'package:fyp/token3.dart';
import 'package:fyp/selltoken1.dart';

class selltoken extends StatefulWidget {
  @override
  _selltokenState createState() => _selltokenState();
}

class _selltokenState extends State<selltoken> {
  int currentPage = 1;
  int totalPages = 3;

  void _navigateToPage(int page) {
    if (page == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => selltoken()), // Navigate to Page 1
      );
    } else if (page == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => token2()), // Navigate to Page 2
      );
    } else if (page == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => token3()), // Navigate to Page 3
      );
    } else {
      setState(() {
        currentPage = page;
      });
    }
  }

  void _navigateToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => select()), // Navigate to Home Page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 96, 163, 188), // Dark Orchid
              Color.fromARGB(255, 205, 200, 206),
            ],
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text(
                'Buy a land',
                style: TextStyle(
                  color: Color.fromARGB(215, 213, 211, 198),
                ),
              ),
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 7, 87, 98),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 0.6, // Adjust the aspect ratio
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        buildGridTile(context, 'lib/assets/download (1).jpg',
                            'Land from Kottawa. 22ft', '\Rs.254 000 000'),
                        buildGridTile(
                            context,
                            'lib/assets/images (2).jpg',
                            'Close to Panadura, two rooms, 2 bathrooms',
                            '\Rs.254 000 000'),
                        buildGridTile(
                            context,
                            'lib/assets/images (3).jpg',
                            'Land of 30ft each, water, electricity',
                            '\Rs.254 000 000'),
                        buildGridTile(
                            context,
                            'lib/assets/images (3).jpg',
                            'Land of 30ft each, water, electricity',
                            '\Rs.254 000 000'),
                        // Add more GridTiles as needed
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(totalPages, (index) {
                        int pageIndex = index + 1;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: ElevatedButton(
                            onPressed: () => _navigateToPage(pageIndex),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: currentPage == pageIndex
                                  ? Color.fromARGB(255, 96, 163, 188)
                                  : Color.fromARGB(255, 205, 200, 206),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              textStyle: TextStyle(fontSize: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(30, 30), // Set minimum size
                              foregroundColor: Colors.white, // Text color
                            ),
                            child: Text('$pageIndex'),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (currentPage < totalPages) {
                            _navigateToPage(currentPage + 1);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 88, 169, 180),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          textStyle: TextStyle(fontSize: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(60, 30), // Set minimum size
                          foregroundColor: Colors.white, // Text color
                        ),
                        child: Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToHomePage,
        backgroundColor: Color.fromARGB(255, 88, 169, 180),
        child: Icon(Icons.home, color: Colors.white),
      ),
    );
  }

  Widget buildGridTile(
      BuildContext context, String imagePath, String title, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensures the image covers the container
            ),
          ),
        ),
        const SizedBox(height: 8), // Add spacing between image and price
        Text(
          price,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8), // Add spacing between price and button
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 60), // Set a fixed height for the button
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => selltoken1()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 88, 169, 180),
              padding: EdgeInsets.symmetric(
                  horizontal: 8), // Adjust the padding to fit the text
              textStyle:
                  TextStyle(fontSize: 14), // Adjust the font size if needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Smaller border radius
              ),
              foregroundColor: Colors.white, // Text color
            ),
            child: Text(title, textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }
}
