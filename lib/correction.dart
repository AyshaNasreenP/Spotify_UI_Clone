import 'package:flutter/material.dart';
import 'package:flutterspotify/appbar.dart';
import 'package:flutterspotify/recent.dart';
import 'package:flutterspotify/topmix.dart';
import 'package:flutterspotify/shows.dart';


import 'package:carousel_slider/carousel_slider.dart';

import 'fresh.dart';
class cor extends StatefulWidget {
  const cor({super.key});

  @override
  State<cor> createState() => _corState();
}

class _corState extends State<cor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar :AppBar(
      //   title:
      //
      //   Row(
      //
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: Text("Good Morning", style: TextStyle(
      //             fontWeight: FontWeight.w500,
      //             fontSize: 25,
      //             color: Colors.white
      //         ),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Icon(Icons.notifications_on_outlined,size: 30,),
      //             Padding(
      //               padding: const EdgeInsets.fromLTRB(20,0,20,0),
      //               child: Icon(Icons.av_timer,size: 30,),
      //             ),
      //             Icon(Icons.settings_outlined,size: 30,),
      //
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                expandedHeight: 100,
                collapsedHeight: 100,
                toolbarHeight: 100,
                //pinned: true,
                stretch: true,
                backgroundColor: Colors.black,
                leading:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Good Morning", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white
                ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.notifications_on_outlined,size: 30,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                                child: Icon(Icons.av_timer,size: 30,),
                              ),
                              Icon(Icons.settings_outlined,size: 30,),

                            ],
                          ),
                        )
                      ],
                    ),
                    appbar(),
                  ],
                ),


                //appbar(),
                leadingWidth: double.infinity,
              ),

            ];
          },
          body: SingleChildScrollView(
              child:Container(
                // height: double.infinity,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Recently played",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    recent(),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Your top mixes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    topmix(),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Fresh new music",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    shows(),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Fresh new music",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ),
                    fresh(),
                  ],
                ),
              )
          )
      ),
    );
  }
}
