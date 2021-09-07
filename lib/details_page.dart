import 'package:flutter/material.dart';

import 'models/country_model.dart';

class DetailsPage extends StatelessWidget {
  final Country country;

  const DetailsPage({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Contact Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Image.network(
            country.imageUrl,
          ),
          SizedBox(height: 10),
          Text(
            country.description,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
