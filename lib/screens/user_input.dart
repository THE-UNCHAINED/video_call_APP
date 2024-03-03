import 'package:flutter/material.dart';
import 'package:video_calling/screens/call_page.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

TextEditingController _userName = TextEditingController();
TextEditingController _userID = TextEditingController();
TextEditingController _callID = TextEditingController();

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background image
        Image.asset(
          'assets/images/photo.jpg', // Replace with your image asset
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        // Black overlay to make text more readable
        Container(
          color: Colors.black.withOpacity(0.5),
          width: double.infinity,
          height: double.infinity,
        ),
        // Login form
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo or any other header element
                // Your logo widget goes here

                const SizedBox(height: 20),

                // Email text field
                TextFormField(
                  controller: _userName,
                  decoration: InputDecoration(
                    hintText: 'YourName',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password text field
                TextFormField(
                  controller: _userID,

                  decoration: InputDecoration(
                    hintText: 'User ID',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password text field
                TextFormField(
                  controller: _callID,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Room ID',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Login button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => CallPage(
                                  userName: _userName.text,
                                  callID: _callID.text, userID: _userID.text,
                                )));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Call'),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
