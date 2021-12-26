import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DropDownMenu();
  }
}

class DropDownMenu extends State {

  String defaultValue = 'None';
  List<String> itemsList = ['None','Computer Science','Physics','Chemistry','English'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdrop menu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: defaultValue,
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18
              ),
              items: itemsList.map((String itemValue) {
                return DropdownMenuItem<String>(
                  value: itemValue,
                  child: Text(itemValue),
                );
              }).toList(),
              onChanged: (String? newValue){
                setState(() {
                  defaultValue = newValue!;
                });
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Subject: $defaultValue',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
