import 'package:flutter/material.dart';


class SearchMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchMenuScreen(),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 83, 95, 105), 
      ),
    );
  }
}

class SearchMenuScreen extends StatefulWidget {
  @override
  _SearchMenuScreenState createState() => _SearchMenuScreenState();
}

class _SearchMenuScreenState extends State<SearchMenuScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _menuItems = [
    'Paramore-The Only Exception',
    'Jason Mraz-Im Yours',
    'Ed Sheeran-Thinking Out Loud',
    'Halsey-Without Me',
    'Billie Eilish & Khalid-Lovely',
    'Lauv-I Like Me Better',
    'HONNE feat. Bekka-Location Unknown',
    'Maroon 5-Memories',
    'Oasis-Dont Look Back in Anger',
    'Radiohead-Creep',
  ];
  List<String> _searchResult = [
    'Paramore-The Only Exception',
    'Jason Mraz-Im Yours',
    'Ed Sheeran-Thinking Out Loud',
    'Halsey-Without Me',
    'Billie Eilish & Khalid-Lovely',
    'Lauv-I Like Me Better',
    'HONNE feat. Bekka-Location Unknown',
    'Maroon 5-Memories',
    'Oasis-Dont Look Back in Anger',
    'Radiohead-Creep',
  ];
  List<String> _thumbnails = [
    'assets/paramore.jpg/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  void _filterSearchResults(String query) {
    if (query.isNotEmpty) {
      List<String> tempList = [];
      _menuItems.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          tempList.add(item);
        }
      });
      setState(() {
        _searchResult.clear();
        _searchResult.addAll(tempList);
      });
    } else {
      setState(() {
        _searchResult.clear();
        _searchResult.addAll(_menuItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(221, 230, 220, 220),
    
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _filterSearchResults(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search music...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResult.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Do something when an item is tapped
                    print('Tapped on: ${_searchResult[index]}');
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(_thumbnails[index]),
                    ),
                    title: Text(_searchResult[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
