import 'package:flutter/material.dart';
import 'package:flutter_project_puzzle/Pages/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50,left: 30),
        child: Column(
          children: [
            Text("Choose puzzles quantity:"),
            ListTile(
              leading: Radio<int>(
                value: 3,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("3"),
            ),
            ListTile(
              leading: Radio<int>(
                value: 8,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("8"),
            ),
            ListTile(
              leading: Radio<int>(
                value: 15,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("15"),
            ),
            ListTile(
              leading: Radio<int>(
                value: 24,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("24"),
            ),
            ListTile(
              leading: Radio<int>(
                value: 35,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("35"),
            ),
            ListTile(
              leading: Radio<int>(
                value: 48,
                groupValue: _selectedNumber,
                onChanged: (value){
                  setState(() {
                    _selectedNumber=value!;
                  });
                },
             ),
              title: const Text("48"),
            ),
            MaterialButton(
             onPressed: (){
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1( selectedNumber: _selectedNumber,)));
               });
             },
              color: Colors.blue,
              child: Text("Back to Game"),
            )
          ],
        ),
      ),
    );
  }
}
