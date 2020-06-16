import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Main();
  }
}


class MyAppBar extends StatelessWidget {

  MyAppBar({this.head});

  final Widget head;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: null, tooltip: 'Navigation menu'),
            // Text(head),
            Expanded(child: head),
            IconButton(icon: Icon(Icons.message), onPressed: null, tooltip: 'message',),
            
          ],        
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}


class Main extends StatelessWidget {
  const Main({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            // mainAxisAlignment: ma,
            children:<Widget>[
              MyAppBar(
                head: Text("Main"),
              ),
              Container(child: Text("data1"),),
              Container(child: Text("data1"),),
              Text("just text"),
              MyButton(),
              // Container(child: Text("data1"),),
            ]
          ),
        ),
      ),
    );
  }
}