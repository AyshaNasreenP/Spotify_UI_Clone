import 'package:flutter/material.dart';
import 'package:flutterspotify/appbar.dart';
import 'package:flutterspotify/recent.dart';
import 'package:flutterspotify/topmix.dart';
import 'package:flutterspotify/shows.dart';


import 'package:carousel_slider/carousel_slider.dart';

import 'fresh.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
              return [
                SliverAppBar(
                  expandedHeight: 50,
                  collapsedHeight: 50,
                  toolbarHeight: 50,
                 pinned: true,
                 stretch: true,
                  backgroundColor: Colors.black,
                  leading:appbar(),
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
                        child: Text("New shows",
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
