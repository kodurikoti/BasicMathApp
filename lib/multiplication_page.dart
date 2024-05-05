import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class MultiplicationPage extends StatefulWidget {
  const MultiplicationPage({super.key,});
  @override
  State<MultiplicationPage> createState() => _MultiplicationPageState();
}

class _MultiplicationPageState extends State<MultiplicationPage> {
  int first = 0;
  int second = 0;
  int sum = 0;
  List<int> ansList = [];
  var rng = Random();

  @override
  void initState() {
    super.initState();
    ansList.add(rng.nextInt(80));
    ansList.add(rng.nextInt(80));
    ansList.add(rng.nextInt(80));
    first = rng.nextInt(10);
    second = rng.nextInt(10);
    sum = first * second;
    ansList.insert(rng.nextInt(4),sum);

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF058074),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$first',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                SizedBox(width: 20,),
                Text(
                  '×',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                SizedBox(width: 20,),
                Text(
                  '$second',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                SizedBox(width: 20,),
                Text(
                  '= ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35),
                )
              ],
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ans:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < ansList.length; i++)
                  itemView(i),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10,end: 10,top: 10,bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF009688),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: InkWell(
                onTap: (){
                  if(correctIndex == -1){
                    Fluttertoast.showToast(
                        msg: "Please select number",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    return;
                  }
                  ansList.clear();
                  ansList.add(rng.nextInt(80));
                  ansList.add(rng.nextInt(80));
                  ansList.add(rng.nextInt(80));
                  first = rng.nextInt(10);
                  second = rng.nextInt(10);
                  sum = first * second;
                  ansList.insert(rng.nextInt(4),sum);
                  correctIndex = -1;
                  setState(() {});
                },
                child: Text(
                  'NEXT',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF061EA1), fontSize: 23),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  int correctIndex = -1;
  Widget itemView(int i){
    String sub = "a) ";
    if(i == 1){
      sub = "b) ";
    }else if(i == 2){
      sub = "c) ";
    }else if(i == 3){
      sub = "d) ";
    }

    return InkWell(
      onTap: (){
        if(ansList[i] == sum){
          setState(() {
            correctIndex = i;
          });
        }else{
          Fluttertoast.showToast(
              msg: "Wrong",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sub,
            textAlign: TextAlign.center,
            style: TextStyle(color: correctIndex == i ? Colors.amberAccent: Colors.white, fontSize: 35),
          ),
          SizedBox(width: 5,),
          Text(
            '${ansList[i]}',
            textAlign: TextAlign.center,
            style: TextStyle(color: correctIndex == i ? Colors.amberAccent: Colors.white, fontSize: 35),
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}