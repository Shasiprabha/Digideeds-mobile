import 'package:flutter/material.dart';
import 'package:fyp/second.dart';
import 'package:fyp/sign.dart';
import 'package:fyp/sellbuy.dart';
import 'package:fyp/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 214, 206, 213)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Block-Lands'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('lib/assets/front.mp4')
      ..initialize().then((_) {
        setState(() {}); // Update the state to reflect the initialized video
        _controller.setLooping(true); // Loop the video
        _controller.play(); // Play the video
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
      appBar: AppBar(
        title: const Text('Block-Lands',
            style: TextStyle(
              color: Color.fromARGB(215, 213, 211, 198),
            )),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 87, 98),
      ),
      body: Stack(
        children: [
          // Background video
          Positioned.fill(
            child: _controller.value.isInitialized
                ? FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller),
                    ),
                  )
                : Container(color: Colors.black),
          ),
          // Foreground content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async {
                          const url = 'https://www.figma.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text(
                          'Learn More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(215, 213, 211, 198),
                            backgroundColor: Colors.transparent,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 20.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => sellbuy(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(215, 213, 211, 198),
                            backgroundColor: Colors.transparent,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 20.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => profile(),
                            ),
                          );
                        },
                        child: const Text(
                          'Your profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(215, 213, 211, 198),
                            backgroundColor: Colors.transparent,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 20.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.blueAccent,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color:
                        Colors.black.withOpacity(0.6), // Black with 60% opacity
                    borderRadius: BorderRadius.circular(
                        8), // Optional: Add rounded corners
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Column(
                    children: [
                      Text(
                        'Fractional Real Estate MarketPlace',
                        style: TextStyle(
                          color: Color.fromARGB(215, 213, 211, 198),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.blueAccent,
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 20.0,
                              color: Colors.blueAccent,
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 30.0,
                              color: Colors.blueAccent,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Join with us to save time and money when selling your land. Make your land an investment. You can simply get away the burden of dealing the land by letting us be the cause.',
                        style: TextStyle(
                          color: Color.fromARGB(215, 213, 211, 198),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text('Learn about Blockchain'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sign()),
                    );
                  },
                  child: Text('Sign in'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



/*

class MyWidget extends StatefulWidget { //Actual widget which creates the state object
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> { //state object
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/