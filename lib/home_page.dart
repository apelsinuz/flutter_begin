import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 4;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: null,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('icons/home.svg'), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "Shop"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('icons/shopping.svg'), label: "Bag"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('icons/heart.svg'), label: "Favorites"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.search, size: 35)],
              ),
              Row(
                children: const [
                  Text('My profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 25),
              Row(children: [
                const SizedBox(width: 14),
                const CircleAvatar(
                  backgroundImage: AssetImage('images/profile_image.jpg'),
                  radius: 25.0,
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Matilda Brown',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text('matilda brown@mail.com',
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
              ]),
              const SizedBox(height: 15),
              menu('My orders', 'Already have 12 orders'),
              menu('Shipping addresses', '3 addresses'),
              menu('Payment methods', 'Visa *34'),
              menu('Promocodes', 'You have special promocodes'),
              menu('My reviews', 'Reviews for 4 items'),
              menu('Settings', 'Notifications, password'),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(String title, String subtitle) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 34),
                Text(title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
            TextButton(
              onPressed: null,
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  SvgPicture.asset('icons/shape.svg'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
