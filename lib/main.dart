import 'dart:html';

import 'package:calculate_it/new_page2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';
import 'package:calculate_it/new_page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.transparent
          // primarySwatch: Colors.pink,
          // primaryColor: defaultTargetPlatform == TargetPlatform.iOS
          //     ? Colors.pink[50]
          //     : null),
          ),
      home: HomePage(),
    );
  }
}

//

// class AnimatedImage extends StatefulWidget {
//   @override
//   _AnimatedImageState createState() => _AnimatedImageState();
// }

// class _AnimatedImageState extends State<AnimatedImage>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     vsync: this,
//     duration: const Duration(seconds: 3),
//   )..repeat(reverse: true);
//   late Animation<Offset> _animation = Tween(
//     begin: Offset.zero,
//     end: Offset(0, 0.08),
//   ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
//       position: _animation,
//       child: Image.asset('assets/monster.png'),
//     );
//   }
// }

//
// class AnimatedImage extends StatefulWidget {
//   @override
//   _AnimatedImageState createState() => _AnimatedImageState();
// }

// class _AnimatedImageState extends State<AnimatedImage>
//     with SingleTickerProviderStateMixin {
//   AnimationController _animationController;
//   Animation _animation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: Duration(seconds: 3));
//   }

// _animation=Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));
// @override
// void dispose() {
//   super.dispose();
//   _controller.dispose();
// }

// @override
// Widget build(BuildContext context) {
//   return Container();
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      backgroundColor: Colors.transparent,
      body: Column(
        // AnimatedImage(),
        children: [
          // AnimatedImage(),
          Image.asset('assets/monster.png'),
        ],
      ),
      //
      appBar: AppBar(
        title: Text("CALCULATE IT"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("sneha"),
              accountEmail: Text("sneha2906singhz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.black
                        : Colors.white,
                child: Text("S"),
              ),
            ),
            ListTile(
              title: Text("Age Calculator"),
              trailing: Icon(
                Icons.arrow_right_alt_rounded,
                color: Colors.greenAccent,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage()));
              },
            ),
            ListTile(
              title: Text("Simple Calculator"),
              trailing: Icon(Icons.arrow_right_alt_rounded,
                  color: Colors.greenAccent),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPageTwo()));
              },
            ),
            ListTile(
              title: Text("BMI Calculator"),
              trailing: Icon(Icons.arrow_right_alt_rounded,
                  color: Colors.greenAccent),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPageOne()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("CLOSE"),
              trailing: Icon(Icons.close_rounded, color: Colors.redAccent),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      // body: Container(
      //   child: Center(
      //     child: ElevatedButton(
      //         child: Text("Press"),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => NewPageOne()),

      //             // child: Text("Home Page"),
      //           );
      //         }),
      //   ),
      // ),
    );
  }
}
