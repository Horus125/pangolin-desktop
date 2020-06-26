/*
Copyright 2019 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
import 'package:flutter/material.dart';

void main() {
  runApp(new Files());
}
class Files extends StatelessWidget {
  final customBar = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Files',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new FilesHome(),
    );
  }
}

class FilesHome extends StatefulWidget {
  FilesHome({Key key}) : super(key: key);
  @override
  _FilesHomeState createState() => new _FilesHomeState();
}

class _FilesHomeState extends State<FilesHome> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Files'),
          ),
      );
    }
}