import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  // WidgetApp
  // MaterialApp
  // cupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      // accentColor: Colors.black,
      primarySwatch: Colors.blue,
    ),
  ));
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Text("Home Page"),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home",
//         style: TextStyle(
//           color: Colors.white
//         ),)
//       ),
//       body:Center(
//         child: Container(
//           padding:const EdgeInsets.all(8),
//           width: 200,
//           height: 100,
//           // color: Colors.blueGrey,  //since using a box color
//           decoration: BoxDecoration(
//             color: Colors.orange,
//             borderRadius:BorderRadius.circular(12),
//             gradient: LinearGradient(
//               colors: [
//                 Colors.white,
//                 Colors.orange,
//               ]
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 7
//                 )
//             ]
//           ),
//           alignment: Alignment.bottomRight,
//           child:Text("All Blogs",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             ),
//             ),
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
        style: TextStyle(
          color: Colors.white
        ),)
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}