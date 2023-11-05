import 'package:flutter/material.dart';
class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  Color buttonColorall =Color(0xFF525050);
  Color buttonColormusic =Color(0xFF525050);
  Color buttonColorpodcast =Color(0xFF525050);
  void changeButtonColorall() {
    setState(() {
      // Change the button color when pressed
      buttonColorall = Color(0xFF15DA51);
     // Change this to the color you want
    });
  }
  // void changeButtonColormusic() {
  //   setState(() {
  //     // Change the button color when pressed
  //     buttonColormusic = Color(0xFF15DA51);
  //
  //     // Change this to the color you want
  //   });
  // }
  // void changeButtonColorpodcast() {
  //   setState(() {
  //     // Change the button color when pressed
  //     buttonColorpodcast = Color(0xFF15DA51);
  //    // Change this to the color you want
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(

        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Color(0xffef7e0a),
                  borderRadius:BorderRadius.circular(35)

              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text("A",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),),
              ),
              //color: Colors.green,
            ),
          ),
          // CircleAvatar(
          //   backgroundImage: AssetImage("assets/a.png"),
          //   radius: 20,
          // ),
          ElevatedButton(
              child: Text("All"),
              style:ElevatedButton.styleFrom(

                primary: buttonColorall,
               // onPrimary: Colors.green,
                //onSurface: Colors.green,
               // foregroundColor: Colors.green,
                //surfaceTintColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),


              ),
              onPressed: (){
                changeButtonColorall();
              }
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(

                style:ElevatedButton.styleFrom(

                  primary: buttonColormusic,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),

                ),
                onPressed: (){
                    // changeButtonColormusic();
              },
                 child: Text("Music")),
          ),
          ElevatedButton(
              style:ElevatedButton.styleFrom(

                primary:buttonColorpodcast ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),

              ),
              onPressed: (){
               // changeButtonColorpodcast();
              }, child: Text("Podcasts & Show")),

        ],
      ),
    );
  }
}
