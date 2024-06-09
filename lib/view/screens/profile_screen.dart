import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 142, 142, 142),
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'edit info',
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Edit Info'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'set photo',
                child: Row(
                  children: [
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Set Profile Photo'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                    "https://image.freepik.com/free-vector/person-programmer-working-pc-laptop-with-program-code-screen-coding-programming-vector-concept-illustration-developer-programming-software-coding-type_53562-5178.jpg",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Samandar",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "+998 97 742 07 67",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
