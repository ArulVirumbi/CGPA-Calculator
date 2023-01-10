import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

class developerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Center(child: Text("ABOUT",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),)),
              ),
              SizedBox(height: 36,),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Center(
                  child: Text(
                    "       Welcome to the Sandwich CGPA Calculator app! This app is designed to help the Sandwich students of PSG College of Technology keep track of their academic progress, making it easy to calculate CGPA (Cumulative Grade Point Average). With features such as saving and reloading the grades and various customization options available. With it's intuitive design and user-friendly features, students will be able to calculate their CGPA with less time and effort. Thank you for using this app!",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.justify,
                    // textHeightBehavior: ,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Developers',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 3.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                            width: w*0.35,
                            height: h*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/loginimg.png"
                                    ),
                                    fit: BoxFit.cover
                                )
                            ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,bottom: 16.0),
                              child: Text('ARUL VIRUMBI K', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, bottom: 16.0),
                              child: Text('BE EEE(SW), 2024 Batch',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.linkedin,size: 36,color: Color(0xFF0072b1)),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('https://www.linkedin.com/in/arul-virumbi-k-a306781b0/'));
                                    }),
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.github,size: 36,),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('https://github.com/ArulVirumbi'));
                                    }),
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.envelope,size: 36,color: Color(0xFFdb4437)),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('mailto:arul.virumbi@gmail.com'));
                                    })
                              ],
                            )
                            // IconButton(onPressed: onPressed, icon: Icon())
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 3.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                          width: w*0.35,
                          height: h*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "img/loginimg.png"
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,bottom: 16.0),
                              child: Text('SUDARSHAN S', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, bottom: 16.0),
                              child: Text('BE EEE(SW), 2024 Batch',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.linkedin,size: 36,color: Color(0xFF0072b1)),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('https://www.linkedin.com/in/sudarshansangameswaran/'));
                                    }),
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.github,size: 36,),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('https://github.com/sudarshan-hub'));
                                    }),
                                IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.envelope,size: 36,color: Color(0xFFdb4437)),
                                    onPressed: () {
                                      _launchInBrowser(Uri.parse('mailto:sudarshansangameswaran@gmail.com'));
                                    })
                              ],
                            )
                            // IconButton(onPressed: onPressed, icon: Icon())
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),

            ],
          ),
        ),

      ),
    );
  }
}
