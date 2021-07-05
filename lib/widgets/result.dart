import 'dart:html';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final count;
  final total;
  final Function()? onClearState;
  
  Result({ Key? key,
    this.count,
    this.total,
    required this.onClearState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    String masg = '';
    Widget win;

    if (0 <= count && count < 2) {
      masg = 'Плохая работа. Попробуй снова';
      win = Image.network('assets/images/lose.jpg');
    } else {
      masg = 'Хорошая работа.! До встречи!!!';
      win = Image.network('assets/images/winner.jpg');
    }
    
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          )
        ],
      borderRadius: BorderRadius.circular(30.0),
      gradient: LinearGradient (
        colors: <Color>[
          Color(0xFF5337ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ],
      ) 
    ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: win,
            ),
          ),

          Container(
            child: Text(
              masg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),


          ElevatedButton(
            child: Text(
              'Попробуй еще раз'
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}