import 'package:flutter/material.dart';
import 'package:responsi_123200065_noviam/category_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Utama",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false, // Add this line to remove the back arrow button
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonGetProduk(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

Widget buttonGetProduk(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(bottom: 20, left: 60, right: 60, top: 35),
    child: Column(
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('assets/img.png'),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Find Your Comfort Food on HeumHeum',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),
        Center(
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return CategoryPage();
                }),
              );
            },
            icon: Icon(Icons.search),
            label: const Text('Search Your Food'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(40),
            ),
          ),
        ),
      ],
    ),
  );
}
