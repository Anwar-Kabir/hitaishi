import 'package:flutter/material.dart';
import 'package:hitaishi/bottom_navigation_bar/account.dart';
import 'package:hitaishi/bottom_navigation_bar/bottom_home.dart';
import 'package:hitaishi/bottom_navigation_bar/favorite.dart';
import 'package:hitaishi/bottom_navigation_bar/order.dart';
import 'package:hitaishi/bottom_navigation_bar/treding.dart';
import 'package:hitaishi/category.dart';
import 'package:hitaishi/signin_signup/decition_tree.dart';
import 'package:hitaishi/signin_signup/signin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late String _title;
  final pages = [BottomHome(), Favorite(), Treding(), Order(), Signin()];

  @override
  initState() {
    _title = 'Hitaisi';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
            titleSpacing: 3.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;

                switch (index) {
                  case 0:
                    {
                      _title = 'Hitaisi';
                    }
                    break;
                  case 1:
                    {
                      _title = 'Favorite';
                    }
                    break;
                  case 2:
                    {
                      _title = 'Treading';
                    }
                    break;
                  case 3:
                    {
                      _title = 'Order';
                    }
                    break;
                  case 4:
                    {
                      _title = 'Account';
                    }
                    break;
                }
              });
            },
            //backgroundColor: Colors.green,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.trending_up),
                  label: 'Treading',
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_shopping_cart),
                  label: 'Order',
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Account',
                  backgroundColor: Colors.teal),
            ],
          ),
          body: pages[_currentIndex]),
    );
  }
}
