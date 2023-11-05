import 'package:flutter/material.dart';
import 'package:flutterspotify/library.dart';
import 'package:flutterspotify/search.dart';
import 'home.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    home(),
    search(),
    home(),
    home(),

  ];

  void tap(index)
  {
    setState(() {
      _index= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body:
      pages[_index],
      bottomNavigationBar:



          BottomNavigationBar(
            //useLegacyColorScheme: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 30,
            //backgroundColor: Colors.black,
            //fixedColor: Colors.black,
            items:  [
              BottomNavigationBarItem(icon: Icon(Icons.home,
                //color: Colors.white,
              ),label: "Home",
              backgroundColor: Colors.black)
              ,
              BottomNavigationBarItem(icon: Icon(Icons.search_outlined,
                // color: Colors.white,
              ),label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined,
                //color: Colors.white
              ),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.workspace_premium_outlined,
                //color: Colors.white
              ),label: ""),

            ],
            currentIndex: _index,
            onTap: tap,
            // fixedColor: Colors.black,


          ),





    );
  }
}



