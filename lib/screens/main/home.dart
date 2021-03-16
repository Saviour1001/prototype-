import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:day12_login/screens/home/feed.dart';
import 'package:day12_login/screens/home/search.dart';
import 'package:day12_login/services/auth.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _authService = AuthService();
  int _currentIndex = 0;
  final List<Widget> _children = [Feed(), Search()];

  void onTabPressed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          child: Icon(Icons.add)),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Image.asset(
              'assets/home_images/pic1.png',
              fit: BoxFit.cover,
            )),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile',
                    arguments: FirebaseAuth.instance.currentUser.uid);
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () async {
                _authService.signOut();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabPressed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: new Icon(Icons.search), label: 'search')
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
