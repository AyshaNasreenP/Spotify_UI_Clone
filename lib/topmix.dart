import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterspotify/models.dart';
import 'package:flutterspotify/songs.dart';

class topmix extends StatefulWidget {
  const topmix({super.key});

  @override
  State<topmix> createState() => _topmixState();
}

class _topmixState extends State<topmix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Topmix.length,
            itemExtent:160.0,
            itemBuilder: (BuildContext con,index)
            {
              return GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const song()),
                  );
                },
                child: Container(
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

                ),
              );
            }
        ),
      ),
    );
  }
}
