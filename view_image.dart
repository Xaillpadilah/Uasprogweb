// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class ViewImages extends StatefulWidget {
  final String ViewImagves;

  const ViewImages({
    Key?key,
    required this.ViewImagves,
    }) : super(key: key);


  @override
  _ViewImagesState createState() => _ViewImagesState();
}

class _ViewImagesState extends State<ViewImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          //   child: Image.asset(
          //     'assets/images/image1.jpg', 
          //     width: 25,
          //     height: 25,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // SizedBox(height: 8),
          // Icon(
            //Icons.notifications,
           // color: Colors.white,
          ),
        ],
      ),
    );
  }
}
