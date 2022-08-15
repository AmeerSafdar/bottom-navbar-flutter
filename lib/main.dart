import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _buildScreens() {
        return [
          MainScreen(),
          SettingsScreen(),
          Add_1(),
          Message(),
          Profile(),
        
        ];
    }
  List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.home),
                title: ("Home"),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.settings),
                title: ("Settings"),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.add,),
                title: ("Add"),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.person),
                title: ("Profile"),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.chat_bubble),
                title: ("chat"),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            
        ];

    }
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

  _controller = PersistentTabController(initialIndex: 0);

   return Scaffold(
     body:  PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    )
   );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({ Key key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    body: SafeArea(
      child: Center(child: Text("Home",style: TextStyle(color: Colors.black),))),
      
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({ Key key }) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.yellow,
    body: SafeArea(
      child: Center(child: Text("Setting",style: TextStyle(color: Colors.black),))),
      
    );
  }
}



class Profile extends StatefulWidget {
  const Profile({ Key key }) : super(key: key);

  @override
  _SettingsScreenState11 createState() => _SettingsScreenState11();
}

class _SettingsScreenState11 extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    body: SafeArea(
      child: Center(child: Text("Chat",style: TextStyle(color: Colors.black),))),
      
    );
  }
}
class Add_1 extends StatefulWidget {
  const Add_1({ Key key }) : super(key: key);

  @override
  _SettingsScreenState111 createState() => _SettingsScreenState111();
}

class _SettingsScreenState111 extends State<Add_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    body: SafeArea(
      child: Center(child: Text("Add",style: TextStyle(color: Colors.black),))),
      
    );
  }
}

class Message extends StatefulWidget {
  const Message({ Key key }) : super(key: key);

  @override
  _SettingsScreenState1 createState() => _SettingsScreenState1();
}

class _SettingsScreenState1 extends State<Message> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.blue,
    body: SafeArea(
      child: Center(child: Text("profile",style: TextStyle(color: Colors.black),))),
      
    );
  }
}
