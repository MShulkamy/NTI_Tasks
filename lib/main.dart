import 'package:flutter/material.dart';
import 'package:task_3/setting_Card_View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 3, 91, 163),

          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/00000.jpg',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,

                    child: Align(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 43,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/customer.png',
                          ),
                          radius: 40,
                          backgroundColor: const Color.fromARGB(
                            255,
                            94,
                            39,
                            39,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'Mostafa Sholkamy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Flutter Developer', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              Text('Bani Suaf, EGY'),

              Container(
                margin: EdgeInsets.all(16),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 238, 255),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.email, color: Color.fromARGB(255, 3, 91, 163)),
                    SizedBox(width: 55),
                    Text('MostafaSholkamy50@gmail.com'),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Color.fromARGB(255, 208, 209, 209),
                height: 20,
                indent: 20,
                endIndent: 20,
              ),

              SettingsItem(
                icon: Icons.settings,
                title: 'Account Settings',
                onTap: () {},
              ),
              
              SettingsItem(
                icon: Icons.settings,
                title: 'Account Settings',
                onTap: () {},
              ),


              SettingsItem(
                icon: Icons.notifications,
                title: "Notifications",
                onTap: () {},
              ),


              SettingsItem(
                icon: Icons.notifications,
                title: "Notifications",
                onTap: () {},
              ),
              SettingsItem(
                icon: Icons.settings,
                title: 'Account Settings',
                onTap: () {},
              ),

              SettingsItem(
                icon: Icons.settings,
                title: 'Account Settings',
                onTap: () {},
              ),


              SettingsItem(
                icon: Icons.notifications,
                title: "Notifications",
                onTap: () {},
              ),


              SettingsItem(
                icon: Icons.notifications,
                title: "Notifications",
                onTap: () {},
              ),

              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
