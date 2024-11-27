import 'package:flutter/material.dart';
import 'RealPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(bmass());
}
class bmass extends StatelessWidget {
  const bmass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(10, 14, 33, 1),
      ),
      home: RealPage(),
    );
  }
}
