import 'package:flutter/material.dart';

// class NewPage extends StatelessWidget {
//   final String title;
//   NewPage(this.title);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pink,
//         title: Text(title),
//       ),
//       // body: Center(
//       //   child: Text(title),
//       // ),
//     );
//   }
// }

// age calci
class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  // var title;
  // NewPage(this.title);

  double age = 0.0;
  var selectedYear;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _showPicker() {
    showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: DateTime(2021),
            lastDate: DateTime.now())
        .then((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2021 - selectedYear).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(title),
        title: Text("Calculate your age !"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              child: Text(selectedYear != null
                  ? selectedYear.toString()
                  : "Select the year of birth"),
              borderSide: BorderSide(color: Colors.black, width: 3.0),
              color: Colors.black,
              onPressed: () => _showPicker(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            Text(
              "Your age is ${age.toStringAsFixed(0)}",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
