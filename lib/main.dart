import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Mobile Programming',
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<String> _numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRIDVIEW - FATHUR MINGHFAR FANANI - 201011401969'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.5,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        children: List.generate(12, (index) {
          Color color;
          switch (index) {
            case 8:
              color = Colors.green[100]!;
              break;
            case 9:
              color = Colors.lightGreen[200]!;
              break;
            case 10:
              color = Colors.lightGreen[300]!;
              break;
            case 11:
              color = Colors.lightGreen[800]!;
              break;
            default:
              color = Color.lerp(
                Colors.lightBlue[100]!,
                Colors.green[900]!,
                index / 11,
              )!;
          }
          return Container(
            color: color,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _numbers[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
