import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedIndex = 0;
  final _layoutPage = [
    home(),
    transaction(),
    about(),
    inbox(),
    profile()

  ];

  void _onTabItem(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _layoutPage.elementAt(_seletedIndex),
      bottomNavigationBar: BottomAppBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('koleksi')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda),
              title: Text('fotografer')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              title: Text('inbox')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('akun saya')
          )
        ]
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}