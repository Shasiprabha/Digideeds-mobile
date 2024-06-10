import 'package:flutter/material.dart';
import 'package:fyp/sign.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn More of Platform',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 6, 55, 53),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 16, 117, 114), // Darker color
              Color.fromARGB(255, 32, 64, 96), // Lighter color
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'A blockchain-based Fractional Real Estate Marketplace allows users to invest in property fractions, ensuring transparent transactions, automated management via smart contracts, and enhanced accessibility, diversification, and liquidity.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'lib/assets/pic3.png',
                      width: 175,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'lib/assets/pic2.png',
                      width: 175,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Invest in fractional rental properties for quick returns. Our platform enables easy land buying, selling, and rent collection, offering flexibility and accessibility.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sign()),
                  );
                },
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
