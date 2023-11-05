import 'package:flutter/material.dart';
import 'package:flutterspotify/home.dart';

import 'models.dart';
import 'navbar.dart';
class song extends StatefulWidget {
  const song({super.key});

  @override
  State<song> createState() => _songState();
}

class _songState extends State<song> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      NestedScrollView(
        headerSliverBuilder:( BuildContext context, bool innerBoxIsScrolled)
    {
      return [
        SliverAppBar(
          backgroundColor: Color(0xfe7736bb),
          expandedHeight: 300,
          //collapsedHeight: 300,
         // toolbarHeight: 300,
          pinned: true,
          floating: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Botnavi()),
                    );
                  },
                  child: Container(
                    //color: Color(0xefc5bbbb),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color(0x3ad9d2d2),
                          borderRadius:BorderRadius.circular(35)

                      ),
                      child: Icon(Icons.arrow_back_ios_new)),
                )),
          ),
          //stretch: true,
            //leadingWidth: double.infinity,
          
          flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          collapseMode: CollapseMode.parallax,
          title: Align(
            alignment: Alignment.bottomLeft,
            child: Text("  Punjabi 101",
            style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
      )
            ),
          ),
      //     leading: Container(
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //             begin: Alignment.center,
      //             end: Alignment.bottomCenter,
      //             colors: <Color> [Color(0xff27226a),Color(0xff6e1e5b)]
      //             ),
      //     image: DecorationImage(
      //     image: AssetImage("assets/img_4.png"),
      //       fit: BoxFit.fill
      //     ),
      //
      //   )
      // ),
      //     title: Text("Punjabi 101"),
      //     titleTextStyle: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 40,
      //       color: Colors.white
      //     ),
            background: Ink.image(image: AssetImage("assets/img_4.png"),
            fit: BoxFit.fill,),
        ),
        ),
        // SliverPersistentHeader(
        //     pinned: true,
        //     delegate: myclass()
        // )

      ];
    },
          body: SingleChildScrollView(
            child: Container(

              color: Colors.black,
              //height: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //height: 100,

                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: <Color> [Color(0x9b17103b),Colors.black]
                      )
                    ),
                    //height: 100,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Ultimateb101 Punjabi hits ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey
                            ),),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("11,00,620 saves . 5h 6m",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                            ),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.add_circle_outline_outlined,size: 30,color: Colors.grey,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.save_alt,size: 30,color: Colors.grey,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.more_horiz_outlined,size: 30,color: Colors.grey,),
                                ),


                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                  child: Icon(Icons.shuffle_outlined,size: 30,color: Colors.grey,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                  child: Icon(Icons.play_circle,size: 40,color: Colors.green,),
                                ),
                              ],
                            )

                          ],
                        ),
                      ],
                    ),







                  ),


                  Container(
                    height: 1000,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: recentimage.length,

                        itemBuilder: (BuildContext con,index)
                        {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child:
                            Container(
                                height: 100,
                               // width: double.infinity,
                                // color: Colors.cyan,

                                child:  Column(
                                  children: [
                                    Container(
                                      //color: Colors.cyan,
                                      height: 100,
                                      width:double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children :[
                                                  Row(

                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(

                                                          decoration: BoxDecoration(


                                                            //shape: BoxShape.circle,
                                                            image: DecorationImage(
                                                              image: AssetImage(recentimage[index].image),
                                                              fit: BoxFit.fill
                                                            ),
                                                            // color: Colors.black
                                                          ),
                                                          height: 70,width: 70,
                                                        ),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [

                                                          Text(recentimage[index].text,
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white
                                                            ),),
                                                          Text(recentimage[index].text,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.grey
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ]
                                                  ),


                                        //crossAxisAlignment: CrossAxisAlignment.start,


                                          Icon(Icons.more_horiz_outlined,color: Colors.grey,)
                                        ],
                                      ),
                                      // decoration: BoxDecoration(
                                          //shape: BoxShape.circle,
                                          // image: DecorationImage(
                                          //     image: AssetImage(recentimage[index].image),
                                          //     //fit: BoxFit.fill
                                          // )
                                     // ),
                                    ),
                                   // Text(recentimage[index].text)
                                  ],
                                )


                            ),
                          );
                        }
                    ),
                  ),
                ],
                
              ),
          ),
          )
      ),
    );
  }
}

///
//    centerTitle: false,
//           collapseMode: CollapseMode.parallax,
//           title: Align(
//             alignment: Alignment.bottomLeft,
//             child: Text("  Punjabi 101",
//             style: TextStyle(
//             color: Colors.white,
//             fontSize: 30.0,
//       )
//             ),
//           ),