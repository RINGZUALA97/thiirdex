import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;
  List<Widget> _baroption = <Widget>[
    Text('home'),
    Text('sds'),
    Text('asasas'),
  ];
  void _itemTap(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('top bar'),
      ),
      body: Center(
        child: _baroption.elementAt(_selectindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: 'alarm'),
        ],
        currentIndex: _selectindex,
        onTap: _itemTap,
      ),
    );
  }
}
