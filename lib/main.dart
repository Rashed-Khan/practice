import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCardUI(),
    );
  }
}

class ProfileCardUI extends StatefulWidget {
  const ProfileCardUI({super.key});

  @override
  State<ProfileCardUI> createState() => _ProfileCardUIState();
}

class _ProfileCardUIState extends State<ProfileCardUI> {

  String buttonText = 'Follow';
  void toggleFlow(){
    setState(() {
      buttonText = buttonText == 'Follow' ? 'Following' : 'Follow';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/33106773/pexels-photo-33106773.jpeg",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Md Rashed Khan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Flutter Developer in Progress 🚀",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: toggleFlow,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}