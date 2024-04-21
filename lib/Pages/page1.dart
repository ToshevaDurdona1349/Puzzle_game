import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project_puzzle/Pages/page2.dart';

class Page1 extends StatefulWidget {
  final int selectedNumber;
  const Page1({required this.selectedNumber});
  @override
  State<Page1> createState() => _Page1State(selectNumber: selectedNumber);
}
class _Page1State extends State<Page1> {
  final int selectNumber;
   _Page1State({required this.selectNumber});
  @override
  Widget build(BuildContext context) {
    List list=List.generate(selectNumber+1, (index) => index);
    list.shuffle();  //hato bo'lishi mumkin
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           TextButton(onPressed: (){}, child:Text("Shuffle",style: TextStyle(fontSize:22,color: Colors.cyan))),
           Text("$selectNumber Puzzle",style: TextStyle(fontWeight: FontWeight.bold),),
           TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
           }, child: Text("Option",style: TextStyle(fontSize: 22,color: Colors.cyan)))
         ], 
        ),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: const Text("Place the tile in order and you win\n Shuffle to start e new game",
          textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.yellow),
              child: GridView.count(
                crossAxisCount: sqrt(selectNumber+1).toInt(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: List.generate(selectNumber+1, (index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        print(index);
                        print(list[index]);
                      });
                    },
                    child: Container(
                      child:Center(child: list[index]!=0? Text("${list[index]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)):null),
                      decoration: BoxDecoration(
                        color: list[index]!=0?Colors.lightGreen:null,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),

                  );
                }),
              )
            ),
          ),
        ],
      ),
    );
  }
}
