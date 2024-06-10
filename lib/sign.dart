import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:fyp/select.dart';

class sign extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('lib/assets/signin.mp4')
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
    // Controllers to capture user input
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController idController = TextEditingController();

    // Regular expression for email validation
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Regular expression for password validation
    final RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

    // Method to show a SnackBar with a message
    void showSnackBar(BuildContext context, String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: Duration(seconds: 2),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          // Background video
          Positioned.fill(
            child: _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Container(color: Colors.black),
          ),
          // Foreground container
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.black
                  .withOpacity(0.6), // Optional: semi-transparent overlay
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '*Please Provide your authentic details here.',
                      style: TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255), // Change the color here
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255,
                                255)), // Set the label text color
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 77, 126, 147)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 71, 127, 148)),
                        ),
                        prefixIcon: Icon(Icons.email,
                            color: Color.fromARGB(255, 42, 122, 137)),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255)), // Set the input text color
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255,
                                255)), // Set the label text color
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 77, 126, 147)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 77, 126, 147)),
                        ),
                        prefixIcon: Icon(Icons.lock,
                            color: Color.fromARGB(255, 77, 126, 147)),
                      ),
                      obscureText: true,
                      style: const TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255)), // Set the input text color
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: idController,
                      decoration: const InputDecoration(
                        labelText: 'National ID Number',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255,
                                255)), // Set the label text color
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 77, 126, 147)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 77, 126, 147)),
                        ),
                        prefixIcon: Icon(Icons.credit_card,
                            color: Color.fromARGB(255, 77, 126, 147)),
                      ),
                      keyboardType: TextInputType
                          .number, // Assuming the ID number is numeric
                      style: const TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255)), // Set the input text color
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        String email = emailController.text;
                        String password = passwordController.text;
                        String idNumber = idController.text;

                        // Validate email
                        if (!emailRegex.hasMatch(email)) {
                          showSnackBar(
                              context, 'Please enter a valid email address.');
                          return;
                        }

                        // Validate password
                        if (!passwordRegex.hasMatch(password)) {
                          showSnackBar(context,
                              'Password must be at least 8 characters long, contain an uppercase letter, a lowercase letter, and a number.');
                          return;
                        }

                        // Handle sign-in logic here
                        print(
                            'Email: $email, Password: $password, ID Number: $idNumber');

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  select()), // Ensure this points to your correct page
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 77, 197,
                            203), // Set the background color of the button
                      ),
                      child: Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
