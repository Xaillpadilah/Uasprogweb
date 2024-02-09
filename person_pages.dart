import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
            onPressed: () {
              // Tambahkan logika untuk menangani ketika ikon Facebook diklik
            },
          ),
          IconButton(
            icon: Icon(Icons.whatshot),
            onPressed: () {
              // Tambahkan logika untuk menangani ketika ikon Instagram diklik
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200], // Ubah warna latar belakang sesuai keinginan Anda
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'M Wipaldi Nurpadilah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'diewipal@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.orange,
              ),
              title: Text('Edit Profile'),
              onTap: () {
                // Tambahkan logika untuk menangani ketika 'Edit Profile' diklik
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.purple,
              ),
              title: Text('Settings'),
              onTap: () {
                // Tambahkan logika untuk menangani ketika 'Settings' diklik
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text('Log Out'),
              onTap: () {
                // Tambahkan logika untuk menangani ketika 'Log Out' diklik
              },
            ),
          ],
        ),
      ),
    );
  }
}
