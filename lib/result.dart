import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Result
class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.result,required this.semNo}) : super(key: key);
  final List result;
  final int semNo;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Column(
            children: [
              Column(
                children: List.generate(widget.semNo, (index){
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex:4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                                "CGPA till Sem ${index+1}",
                              style: TextStyle(fontSize: 18),
                              ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Text(
                              "${widget.result[index].toStringAsFixed(2)}",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                  })
              ),
            ],
          ),
        ),
      ),

    );

  }
}