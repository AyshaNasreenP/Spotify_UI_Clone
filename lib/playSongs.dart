import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlaySong extends StatefulWidget {
  const PlaySong({Key? key}) : super(key: key);

  @override
  State<PlaySong> createState() => _PlaySongState();
}

class _PlaySongState extends State<PlaySong> {
  late AudioPlayer _audioPlayer;
  double _sliderValue = 0.0;
  int _currentSongIndex = 0;
  List<String> _songList = [
    'assets/audio1.mp3',
    'assets/audio2.mp3',
    'assets/audio3.mp3',
    'assets/audio4.mp3',

    // Add more songs as needed
  ];

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initPlayer();
  }
  // Future<void> _initPlayer() async {
  //   await _audioPlayer.setAsset('assets/audio1.mp3');
  //   _audioPlayer.positionStream.listen((position) {
  //     setState(() {
  //       _sliderValue = position.inSeconds.toDouble();
  //     });
  //   });
  // }
  Future<void> _initPlayer() async {
    await _audioPlayer.setAsset(_songList[_currentSongIndex]);
    _audioPlayer.positionStream.listen((position) {
      setState(() {
        _sliderValue = position.inSeconds.toDouble();
      });
    });
  }
///only play or pause
  // Future<void> _initPlayer() async {
  //   await _audioPlayer.setAsset('assets/audio1.mp3');
  // }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(

                child: Column(
                  children: [
                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: _audioPlayer.duration?.inSeconds.toDouble() ?? 0.0,
                      onChanged: (value) {
                        _audioPlayer.seek(Duration(seconds: value.toInt()));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      //   IconButton(
                      //   icon: Icon(Icons.play_arrow),
                      //   onPressed: () {
                      //     _togglePlayback();
                      //   },
                      // ),
                        IconButton(
                          icon: Icon(Icons.skip_previous),
                          onPressed: () {
                            _skipToPrevious();
                          },
                        ),
                         IconButton(
                          icon: Icon(Icons.replay_10,
                            //size: 30,
                          ),
                          onPressed: () {
                            _skip(Duration(seconds: -10));
                          },
                        ),
                        IconButton(
                          icon:
                          Icon(_audioPlayer.playing ? Icons.pause_outlined: Icons.play_arrow,
                              //size: 40
                          ),
                          onPressed: () {
                            _togglePlayback();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.forward_10,
                              //size: 30
                          ),
                          onPressed: () {
                            _skip(Duration(seconds: 10));
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.skip_next),
                          onPressed: () {
                            _skipToNext();
                          },
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
///For play and pause
  Future<void> _togglePlayback() async {
    if (_audioPlayer.playing) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play();
    }
    setState(() {});
  }
///For skip
  Future<void> _skip(Duration duration) async {
    await _audioPlayer.seek(_audioPlayer.position + duration);
  }

  ///Skip one song forward
  void _skipToNext() {
    if (_currentSongIndex < _songList.length - 1) {
      _currentSongIndex++;
      _audioPlayer.setAsset(_songList[_currentSongIndex]);
      _audioPlayer.play();
      setState(() {});
    }
  }
///Skip one song backward
  void _skipToPrevious() {
    if (_currentSongIndex > 0) {
      _currentSongIndex--;
      _audioPlayer.setAsset(_songList[_currentSongIndex]);
      _audioPlayer.play();
      setState(() {});
    }
  }

}
