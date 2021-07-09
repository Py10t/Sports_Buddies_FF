import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:sports_buddies/login_page/login_page_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home_page/home_page_widget.dart';
import 'profile/profile_widget.dart';
import 'buddy_list/buddy_list_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<SportsBuddiesFirebaseUser> userStream;
  SportsBuddiesFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = sportsBuddiesFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports Buddies',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? Center(
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/welcome_screen.gif',
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : LoginPageWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'Profile': ProfileWidget(),
      'Buddy_list': BuddyListWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bento_sharp,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.gem,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_search,
              size: 24,
            ),
            label: 'Buddy_list',
          )
        ],
        backgroundColor: Color(0xFF607D8B),
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0x8A000000),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
