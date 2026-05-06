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
      home: ProfileUI(),
    );
  }
}

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Milon Khan'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/33106773/pexels-photo-33106773.jpeg',
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text('Milon khan',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Icon(Icons.email,color: Colors.grey,),
                    SizedBox(width: 8,),
                    Text('milon@gmail.com',style: TextStyle(color: Colors.red),),

                  ],
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,

                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),

                    child: Text('Follow',style: TextStyle(fontSize: 16),),),

              ],
            ),
          ),
        ),
      ),
    );

  }
}
