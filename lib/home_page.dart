import 'package:basicmathoperations/division_page.dart';
import 'package:basicmathoperations/multiplication_page.dart';
import 'package:basicmathoperations/subtraction_page.dart';
import 'package:flutter/material.dart';

import 'addition_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key,});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF058074),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(start: 30,end: 30,top: 10),
              padding: EdgeInsetsDirectional.only(top: 8,bottom: 8),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdditionPage()),
                  );
                },
                child: Text(
                  'ADDITION',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF061EA1), fontSize: 23),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(start: 30,end: 30,top: 10),
              padding: EdgeInsetsDirectional.only(top: 8,bottom: 8),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubtractionPage()),
                  );
                },
                child: Text(
                  'SUBTRACTION',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF061EA1), fontSize: 23),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(start: 30,end: 30,top: 10),
              padding: EdgeInsetsDirectional.only(top: 8,bottom: 8),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MultiplicationPage()),
                  );
                },
                child: Text(
                  'MULTIPLICATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF061EA1), fontSize: 23),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(start: 30,end: 30,top: 10),
              padding: EdgeInsetsDirectional.only(top: 8,bottom: 8),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DivisionPage()),
                  );
                },
                child: Text(
                  'DIVISION',
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
}