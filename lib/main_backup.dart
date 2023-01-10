import 'dart:core';
import 'dart:ffi';
import 'package:cgpa_calculator/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgpa_calculator/gradeInput.dart';
// import 'package:flutter/services.dart';
// import 'package:cgpa_calculator/slider_widget.dart';

List<String> type_list = <String>['Regular','Lateral'];
List<int> sem_list = <int>[1,2,3,4,5,6,7,8,9,10];
List<String> gpa_list = <String>['CGPA','GPA'];
List<String> dept_list = <String>['EEE SW','Mechanical SW', 'Production SW'];


Map eeeCourseList = {
  1: {
    'Calculus and its Applications': 4,
    'Physics': 3,
    'Chemistry of Electronic materials': 3,
    'Problem solving and C programming': 2,
    'Electrical Engineering Drawing': 2,
    'Problem solving and C programming Laboratory': 1,
    'English language proficiency': 3
  },

  2: {
    'Basic Sciences laboratory': 2,
    'Complex variables and transforms': 4,
    'Semiconductor devices': 3,
    'Applied electrochemistry': 3,
    'Basics of mechanical engineering': 3,
    'Engineering practices': 1,
    'Language Elective': 2
  },

  3: {
    'Electric circuits': 4,
    'Circuits & Devices laboratory': 2,
    'Linear algebra and numerical analysis': 4,
    'Electromagnetic theory': 3,
    'DC machines and transformers': 3,
    'DC machines and transformers laboratory': 1,
    'Building communication skills': 2,
    'Economics for engineers': 3
  },

  4: {
    'Network Theory': 4,
    'Electronic circuits': 3,
    'Electronic circuits laboratory': 1,
    'Probability and statistics': 3,
    'Measurements and Instrumentation': 3,
    'Induction and synchronous machines': 3,
    'Induction and synchronous machines laboratory': 2,
    'Soft skills development': 1
  },

  5: {
    'Digital Electronics': 4,
    'Control systems': 3,
    'Electrical Power Generation systems': 3,
    'Instrumentation and Control Laboratory': 1,
    'Digital Electronics laboratory': 1,
    'Linear Integrated circuits': 3,
    'Power electronics and applications': 4,
    'Business Managerial communications': 1
  },

  6: {
    'Embedded Controllers': 3,
    'Electrical Machine Design': 4,
    'Power Electronics and Embedded Controllers Laboratory': 1,
    'Digital Signal Processing': 3,
    'Transmission and Distribution': 4,
    'Digital signal processing and linear integrated circuits laboratory': 1,
    'Quantitative and reasoning skills': 1
  },

  7: {
    'Computer Architecture': 3,
    'Data Structures using C++': 4,
    'Professional Elective-1': 3,
    'Innovation Practices': 1
  },

  8: {
    'Electrical Drives and Control': 3,
    'Power System Protection and Switchgear': 3,
    'Power System Analysis': 4,
    'Professional Elective II': 3,
    'Open Elective I': 3,
    'Electric Drives and Control Laboratory': 1,
    'Power System Laboratory': 1
  },

  9: {
    'Professional Elective III': 3,
    'Professional Elective IV': 3,
    'Professional Elective V': 3,
    'Open Elective II': 3,
    'Project Work I': 2
  },

  10: {
    'Project Work II': 4,
    'Professional Elective VI': 3
  }
};
//==================================================================================================================
Map mechCourseList = {
  1 : {
    'Calculus and its Applications' : 4,
    'Physics' : 3,
    'Chemistry' : 3,
    'English Language Proficiency' : 3,
    'Engineering Graphics I' : 2,
    'Basic Sciences Laboratory' : 2,
    'C Programming Laboratory' : 2
  },

  2 : {
    'Complex Variables and Transforms' : 4,
    'Materials Science' : 2,
    'Chemistry of Engineering Materials' : 2,
    'Engineering Mechanics' : 4,
    'Engineering Graphics II' : 2,
    'Engineering Practices and Manufacturing Laboratory' : 2,
    'Language Elective' : 2
  },

  3 : {
    'Manufacturing Processes I' : 3,
    'Numerical Methods' : 3,
    'Mechanics of Materials' : 3,
    'Kinematics of Machinery' : 4,
    'Engineering Thermodynamics' : 4,
    'Machine Drawing' : 2,
    'Manufacturing Processing Laboratory' : 1,
    'Materials Science and Mechanics of Materials Laboratory' : 1
  },

  4 : {
    'Manufacturing Processes II' : 3,
    'Probability and Statistics' : 3,
    'Basics of Electrical and Electronics Engineering' : 3,
    'Fluid Mechanics' : 4,
    'Dynamics of Machinery' : 4,
    'Electrical and Electronics Engineering Laboratory' : 1,
    'Fluid Machinery Laboratory' : 1,
    'Soft Skills Development' : 1
  },

  5 : {
    'Economics for Engineers' : 3,
    'Thermal Engineering I' : 3,
    'Design of Machine Elements' : 4,
    'Turbomachinery' : 4,
    'Metrology and Instrumentation' : 3,
    'Thermal Engineering Laboratory' : 1,
    'Metrology and Dynamics Laboratory' : 1,
    'Business and Managerial Communications' : 1
  },

  6 : {
    'Industrial Metallurgy' : 3,
    'Thermal Engineering II' : 4,
    'Manufacturing Automation' : 3,
    'Design of Transmission Elements' : 3,
    'Design of Manufacture and Assembly' : 4,
    'Open Elective I' : 3,
    'Manufacturing Automation Laboratory' : 1,
    'Quantitative and Reasoning Skills' : 1
  },

  7 : {
    'Professional Elective I' : 3,
    'Professional Elective II' : 3
  },

  8 : {
    'Operations Research' : 4,
    'Heat and Mass Transfer' : 4,
    'Finite Elements Analysis' : 3,
    'Professional Elective III' : 3,
    'Heat Transfer Laboratory' : 2,
    'Innovation Practices' : 2,
    'Finite Element Analysis Laboratory' : 1
  },

  9 : {
    'Open Elective II' : 3,
    'Professional Elective IV' : 3,
    'Professional Elective V' : 3,
    'Professional Elective VI' : 3,
    'Project Work I' : 2
  },

  10 : {
    'Project Work II' : 4
  }
};

//==================================================================================================================
Map prodCourseList = {
  1: {
    'Calculus and its Applications' : 4,
    'Physics' : 3,
    'Chemistry' : 3,
    'Professional Ethics' : 2,
    'English Language Proficiency' : 3,
    'Engineering Graphics' : 2,
    'C Programming Laboratory' : 2
  },

  2 : {
    'Complex Variables and Transforms' : 4,
    'Materials Science' : 3,
    'Chemistry of Engineering Materials' : 2,
    'Engineering Mechanics' : 4,
    'Language Elective' : 2,
    'Basic Sciences Laboratory' : 2,
    'Engineering Practices' : 1
  },

  3 : {
    'Numerical Methods' : 3,
    'Basics of Electrical and Electronics Engineering' : 3,
    'Engineering Metullurgy' : 3,
    'Fluid Mechanics and Machinery' : 4,
    'Economics for Engineers' : 3,
    'Machining Technology' : 3,
    'Electrical and Electronics Engineering Laboratory' : 1,
    'Machining Technology Laboratory' : 1
  },

  4 : {
    'Strength of Materials' : 4,
    'Welding Technology' : 3,
    'Thermal Systems and Heat Transfer' : 4,
    'Machine Drawing' : 2,
    'Metallurgy and Strength of Materials Laboratory' : 1,
    'Thermal Engineering and Fluid Machinery Laboratory' : 1,
    'Soft skills Development' : 1
  },

  5 : {
    'Probability and Statistics' : 3,
    'Foundry Technology' : 3,
    'Mechanics of Machines' : 4,
    'Manufacturing Metrology' : 3,
    'Applied Hydraulics and Pneumatics' : 3,
    'Metrology and Computer Aided Inspection Laboratory' : 2,
    'Business and Managerial Communications' : 1
  },

  6 : {
    'Metal Forming Processes' : 3,
    'Computer Numerical Control Machines' : 3,
    'Process Planning and Cost Estimation' : 3,
    'Design of Machine Elements' : 4,
    'Professional Elective I' : 3,
    'Manufacturing Technology Laboratory' : 2,
    'Fluid Power Laboratory' : 1,
    'Quantitative and Reasoning Skills' : 1
  },

  7 : {
    'Environment Conscious Manufacturing' : 2,
    'Production and Operations Management' : 3,
    'Professional Elective II' : 3
  },

  8 : {
    'Quantitative Methods in Management' : 3,
    'Jigs, Fixtures and Die Design' : 3,
    'Design for Manufacture and Assembly' : 3,
    'Automation and Robotics' : 3,
    'Professional Elective III' : 3,
    'CAD, CAM and CAE Laboratory' : 2,
    'Innovation Practices' : 2
  },

  9 : {
    'Professional Elective IV' : 3,
    'Professional Elective V' :3,
    'Professional Elective VI' :3,
    'Open Elective I' : 3,
    'Industrial Engineering and Lean Practices Laboratory' : 2,
    'Project Work I' : 2
  },

  10 : {
    'Open Elective II' : 3,
    'Project Work II' : 4
  }
};
Map courseList={};
List grades=[];

void main() {
  runApp(const MyApp());
}

resultCalc(int start, int end, Map courseList){
  double res = 0.0;
  List credits = List.filled(10, 0);
  List courses;
  List tillCGPA = List.filled(10, 0);
  int? totalCredit=0;
  for(var i=start;i<end;i++) {
    courses = courseList[i+1].keys.toList();
    credits[i] = courseList[i+1].values.reduce((sum, element) => sum + element as int);
    for (var j = 0; j < courseList[i+1].length; j++) {
      res = res + grades[i][j] * courseList[i+1][courses[j]];
    }
    totalCredit =  (credits[i] + totalCredit) as int?;
    tillCGPA[i] = res/totalCredit!;
  }
  return tillCGPA;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Calculator(stType: 'Regular', semNo: 1, cgType: 'CGPA'),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

// Initial Selected Value
  String st_type = 'Regular';
  int sem_no = 1;
  String cg_type = 'CGPA';
  String dept = 'EEE SW';
  int? stTypeValue = 0;
// String dept = 'Electrical and Electronics SW';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("CGPA Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select Department",
              style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),
            ),
            // CupertinoSlidingSegmentedControl<int>(
            //   backgroundColor:  CupertinoColors.white,
            //   thumbColor: CupertinoColors.activeGreen,
            //   padding: EdgeInsets.all(8),
            //   groupValue: groupValue,
            //   children: {
            //     0: buildSegment("Flutter"),
            //     1: buildSegment("React"),
            //     2: buildSegment("Native"),
            //   },
            //   onValueChanged: (value){
            //     setState(() {
            //       groupValue = value;
            //     });
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
              child: DropdownButton(
                alignment: AlignmentDirectional.center,
                value: dept,
                icon: const Icon(Icons.keyboard_arrow_down),
                style: const TextStyle(fontSize: 20, color: Colors.black,),
                items: dept_list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    alignment: AlignmentDirectional.center,
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dept = newValue!;
                  });
                },
              ),
            ),
            const Text(
              "Select Regular or Lateral",
              style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),
            ),
            CupertinoSlidingSegmentedControl<int>(
              backgroundColor:  CupertinoColors.systemGrey5,
              thumbColor: Colors.lightBlue,
              padding: EdgeInsets.all(8),
              groupValue: stTypeValue,
              children: {
                0: buildSegment(type_list[0]),
                1: buildSegment(type_list[1]),
              },
              onValueChanged: (value){
                setState(() {
                  st_type=type_list[value!];
                  stTypeValue = value;
                });
              },
            ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
            //     child: DropdownButton(
            //     value: st_type,
            //     icon: const Icon(Icons.keyboard_arrow_down),
            //     style: const TextStyle(fontSize: 20, color: Colors.black),
            //     items: type_list.map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     }).toList(),
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         st_type = newValue!;
            //       });
            //     },
            // ),
            //   ),
            const Text(
              "Select Semester Number",
              style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
              child: DropdownButton(
                value: sem_no,
                icon: const Icon(Icons.keyboard_arrow_down),
                style: const TextStyle(fontSize: 20, color: Colors.black),
                items: sem_list.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  if (st_type=='Lateral' && (newValue==1 || newValue==2)){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Select the correct Semester Number')),
                    );
                    newValue=3;
                  }
                  setState(() {
                    sem_no = newValue!;
                  });
                },
              ),
            ),
            const Text(
              "Select GPA or CGPA",
              style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
              child: DropdownButton(
                value: cg_type,
                icon: const Icon(Icons.keyboard_arrow_down),
                style: const TextStyle(fontSize: 20, color: Colors.black),
                items: gpa_list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    cg_type = newValue!;
                  });
                },

              ),
            ),
            // SliderWidget(semNo: sem_no.toDouble(),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                if (st_type=='Lateral' && (sem_no==1 || sem_no==2)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Select Semester Number')),
                  );
                }else{
                  switch(dept){
                    case 'EEE SW':
                      courseList = eeeCourseList;
                      break;
                    case 'Mechanical SW':
                      courseList = mechCourseList;
                      break;
                    case 'Production SW':
                      courseList = prodCourseList;
                      break;
                  }
                  grades = List.generate(10, (i) => List.generate(courseList[i+1].length,(index) => 8));
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Calculator(stType: st_type, semNo: sem_no, cgType: cg_type)));
                }
              }, child: const Text('Submit'),
              ),
            ),
          ],
        ),

      ),
    );
  }
  Widget buildSegment(String text){
    return Container(
      child: Text(text,style: TextStyle(fontSize: 22,
          color: Colors.black),),
    );
  }

}



// Calculator Screen
class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.stType, required this.semNo, required this.cgType}) : super(key: key);
  final String stType;
  final int semNo;
  final String cgType;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    int start = 0;
    int end = widget.semNo;
    int iter = widget.semNo;
    int sem = 0;
    if(widget.stType=='Lateral'){
      start=2;
      iter=iter-2;
    }
    if(widget.cgType=='GPA'){
      sem=widget.semNo;
      iter=1;
      start=sem-1;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("CGPA Calculator"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                children: List.generate(iter, (index) {
                  if(widget.stType=='Lateral'){
                    index = index+2;
                  }
                  if(widget.cgType=='GPA') {
                    index = sem-1;
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                              "Semester ${index+1}",
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                          ),
                        ),
                        GradeInput(sem: courseList[index+1], grades: grades[index]),
                      ],
                    ),
                  );
                }),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ElevatedButton(onPressed: (){

                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text(grades[9][0].toString())),
                // );
                if(widget.cgType=='GPA'){
                  showDialog(context: context, builder:(context){
                    return AlertDialog(
                      title: Center(child: const Text("Result")),
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "GPA of Semester ${widget.semNo} : ${resultCalc(start, end, courseList)[widget.semNo-1].toStringAsFixed(2)}",
                            style: TextStyle(fontSize: 18, )),
                      ),
                      actions: <Widget>[
                        Center(child: OutlinedButton(onPressed: () => Navigator.pop(context,'OK'), child: const Text('OK')))
                      ],
                    );
                  });

                }else {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          Result(result: resultCalc(start, end,courseList), semNo: widget
                              .semNo)));
                }
              }, child: const Text('Submit'),
              ),
            ),
          ],
        ),

      ),

    );
  }
}




// Dialog(
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
// elevation:16,
// child: SizedBox(
// width: 280,
// height: 400,
// child: Center(
// child: Text(
// "GPA of Semester ${widget.semNo} : ${resultCalc(start, end)[widget.semNo-1].toStringAsFixed(2)}",
// style: TextStyle(fontSize: 18, ),
// ),
// ),
// ),
// );

