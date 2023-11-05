import 'package:flutter/material.dart';
class yourlibrary extends StatefulWidget {
  const yourlibrary({super.key});

  @override
  State<yourlibrary> createState() => _yourlibraryState();
}

class _yourlibraryState extends State<yourlibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder:( BuildContext context, bool innerBoxIsScrolled)
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
                child: Text("Your Library", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white
                ),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,8,0),
                    child: Icon(Icons.search_outlined,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,8,0),
                    child: Icon(Icons.add,size: 30,),

                  )
                ],
              )

            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 8,top: 10,bottom: 5),
              child:
              ElevatedButton(

                  style:ElevatedButton.styleFrom(

                    primary: Color(0xFF525050),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),

                  ),
                  onPressed: (){
                    // changeButtonColormusic();
                  },
                  child: Text("Music")),
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

            ),
          )),
    );
  }
}
