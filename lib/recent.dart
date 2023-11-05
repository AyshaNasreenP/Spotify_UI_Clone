import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterspotify/models.dart';
import 'package:flutterspotify/songs.dart';
class recent extends StatefulWidget {
  const recent({super.key});

  @override
  State<recent> createState() => _recentState();
}

class _recentState extends State<recent> {
  @override
  Widget build(BuildContext context) {
    return

        Container(
          height: 130,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentimage.length,
              itemExtent:110.0,
              itemBuilder: (BuildContext con,index)
              {
                return
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const song()),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(recentimage[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  // boxShadow: [BoxShadow(
                                  //   color: Colors.grey.withOpacity(0.2),
                                  //  spreadRadius: 2,
                                  //   blurRadius: 1,
                                  //   offset: Offset(0, 3),
                                  // ),
                                  // ]
                                )
                            ),
                            Text(recentimage[index].text,
                                style:TextStyle(
                                    color: Colors.white
                                )),


                          ]
                      ),

                    ),
                  );


              }
          ),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     //color: Colors.white,
        //     width: 45,
        //     height: 45,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("assets/img_7.png"),
        //       fit: BoxFit.fill,
        //       ),
        //         color: Colors.white,
        //         //Color(0x1dbbafac),
        //         borderRadius:BorderRadius.circular(35)
        //     ),
        //
        //
        //
        //
        //     //color: Colors.green,
        //   ),
        // ),



    );
  }
}
