import 'package:flutter/material.dart';

import 'buttons.dart';
import 'inputs.dart';
import 'layouts.dart';
import 'listview.dart';
import 'app_structure_and_navigation.dart';
import 'image_snackbar_spinner.dart';

void main() {
  runApp(MaterialApp(home: DemoApp()));
}

class DemoApp extends StatelessWidget {
  // The build method rebuilds the widget tree if there are any changes.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Widgets Demo'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppStructure()),
                      );
                    },
                    child: Text('App Structure')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Buttons()),
                      );
                    },
                    child: Text('Buttons')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Inputs()),
                      );
                    },
                    child: Text('Inputs')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Layouts()),
                      );
                    },
                    child: Text('Layouts')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewListTile()),
                      );
                    },
                    child: Text('ListView')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageSnackBarSpinner()),
                      );
                    },
                    child: Text('Image, SnackBar, Spinner')),
              ],
            ),
          )),
    );
  }
}