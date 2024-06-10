import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:fyp/rent.dart';
import 'package:fyp/sell.dart';
import 'package:fyp/sellbuy.dart';
import 'package:fyp/selltoken.dart';
import 'package:fyp/main.dart';

class select extends StatefulWidget {
  @override
  _selectState createState() => _selectState();
}

class _selectState extends State<select> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('lib/assets/front.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 247),
      appBar: AppBar(
        title: const Text(
          'Your Need',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 87, 98),
      ),
      body: Stack(
        children: [
          if (_controller.value.isInitialized)
            Positioned.fill(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ),
          Container(
            color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 40),
                const Text(
                  'Select your need here.',
                  style: TextStyle(
                    color:
                        Color.fromARGB(255, 232, 236, 238), // Light blue color
                    fontSize: 24,
                    fontWeight: FontWeight.bold, // Adjust the text style
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sellbuy()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 7, 87, 98), // Set a consistent color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Sell or Buy Land',
                    style: TextStyle(
                      color:
                          Color.fromARGB(255, 13, 151, 151), // Light blue color
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => selltoken()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 7, 87, 98), // Set a consistent color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Sell or Buy Land',
                    style: TextStyle(
                      color:
                          Color.fromARGB(255, 13, 151, 151), // Light blue color
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => rent()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 7, 87, 98), // Set a consistent color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Sell or Buy Land',
                    style: TextStyle(
                      color:
                          Color.fromARGB(255, 13, 151, 151), // Light blue color
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sell()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 7, 87, 98), // Set a consistent color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Sell or Buy Land',
                    style: TextStyle(
                      color:
                          Color.fromARGB(255, 13, 151, 151), // Light blue color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyApp()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 23, 169, 189),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
