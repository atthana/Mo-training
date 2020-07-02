import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // Explicit

  // Method


  @override
  var now = DateTime.now();


  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Pressed');
            }),
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Tasker',
              style: TextStyle(
                fontSize: 35,
              )),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // Icon(
                    //   Icons.account_circle,
                    //   size: 70.0,
                    //   color: Colors.white,
                    // ),
                    Expanded(flex: 3, child: Text("$now"),),
                    Expanded(flex: 1, child: Text("LOVE JI KUB"),),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     Text(
                    //       'Account Name',
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //     Text(
                    //       'Email Address',
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.square(100.0),
            child: TabBar(
              tabs: [
                Icon(
                  Icons.train,
                  size: 35,
                ),
                Icon(
                  Icons.directions_bus,
                  size: 35,
                ),
                Icon(Icons.motorcycle, size: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
