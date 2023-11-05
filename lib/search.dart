import 'package:flutter/material.dart';
import 'package:flutterspotify/models.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                  expandedHeight: 140,
                  collapsedHeight: 140,
                 toolbarHeight: 140,
                  //pinned: true,
                  stretch: true,
                  backgroundColor: Colors.black,
                leading:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,20,8,8),
                          child: Text("Search", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20,0,8,0),
                          child: Icon(Icons.camera_alt_outlined,size: 30,),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 8,top: 10,bottom: 5),
                      child: TextFormField(

                        decoration: InputDecoration(

                          filled: true,
                          prefixIcon: Icon(Icons.search,color: Colors.black,),
                          fillColor: Colors.white,
                          hintText: "What do you want to listen",
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                leadingWidth: double.infinity,
              )
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              height:900,
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Browse all",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                    ),
                  ),
                  Container(
                    height: 800,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 210,
                          childAspectRatio: 18/11,
                          //crossAxisSpacing: 10,
                          mainAxisSpacing: 10,

                        ),

                        itemCount:browse.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            //color: Colors.black,
                              height: 1000,
                              width: 500,

                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                    child:

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 102,
                                        alignment: Alignment.topRight,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            image:  DecorationImage(
                                              image: AssetImage(browse[index].image),
                                              //image: AssetImage(lis[index].image),
                                              fit: BoxFit.fill,
                                            ),
                                            // color: Colors.amber,

                                            borderRadius: BorderRadius.circular(6)),
                                        //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                      ),
                                    ),
                                  ),





                                ],

                              )

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
