import 'package:flutter/material.dart';

import 'models.dart';
class shows extends StatefulWidget {
  const shows({super.key});

  @override
  State<shows> createState() => _showsState();
}

class _showsState extends State<shows> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:
      Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Topmix.length,
            itemExtent:160.0,
            itemBuilder: (BuildContext con,index)
            {
              return Container(
                //color: Colors.white,
                height: 150,
                width: 150,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          //color: Colors.cyan,
                          //borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(Topmix[index].image),
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
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      height: 40,
                      width: 130,
                      child: Text(Topmix[index].text,
                          style:TextStyle(
                              color: Colors.white
                          )),
                    ),


                  ],
                ),

              );
            }
        ),
      ),
    );
  }
}
