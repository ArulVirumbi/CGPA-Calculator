import 'dart:core';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

// Grade Input
class GradeInput extends StatefulWidget {
  const GradeInput({Key? key, required this.sem, required this.grades}) : super(key: key);
  final Map sem;
  final List grades;


  @override
  _GradeInputState createState() => _GradeInputState();
}

class _GradeInputState extends State<GradeInput> {

  @override
  Widget build(BuildContext context) {
    List courses = widget.sem.keys.toList();
    return Column(
          children: List.generate(widget.sem.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom:10.0, left: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                  flex:2,
                  child: Text(
                    "${courses[index]}",
                    style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        NumberPicker(
                          value: widget.grades[index],
                          minValue: 6,
                          maxValue: 10,
                          step: 1,
                          itemHeight: 45,
                          itemWidth: 38,
                          axis: Axis.horizontal,
                          onChanged: (value) =>
                          setState(() => widget.grades[index] = value),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),

        );

  }
}
