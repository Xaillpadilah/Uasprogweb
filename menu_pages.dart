import 'package:flutter/material.dart';
import 'package:utswipal/util/musik_title.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPagesState();
}

class _BerandaPagesState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 102, 110),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildGreetingsRow(),
              SizedBox(height: 20),
              _buildAlbumCategory(),
              SizedBox(height: 20),
              _buildMusicListening(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGreetingsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Wipal!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '09 Nov, 2024',
              style: TextStyle(color: Colors.blue[200]),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 56, 81, 102),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildAlbumCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Album",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/astarboy.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Add more album cards here
               Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/closer.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/you.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/gods.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMusicListening() {
    return Expanded(
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Listening for you',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '16 music',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Musiclistening(),
                    // Add more music items here
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
