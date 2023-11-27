import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:url_launcher/url_launcher.dart';
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
    "http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3",
    "http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Sevish_-__nbsp_.mp3",
    "http://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg",

    // Add more songs as needed
  ];
  double _playbackSpeed = 1.0; // Initial playback speed

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initPlayer();
  }
  Future<void> _initPlayer() async {
    await _audioPlayer.setUrl(_songList[_currentSongIndex]);


    // Listen for player state changes
    _audioPlayer.playerStateStream.listen((playerState) {
      final position = _audioPlayer.position;
      setState(() {
        // Update the slider value when the position is available
        _sliderValue = position.inSeconds.toDouble();
      });
    });

    // Listen for position changes
    _audioPlayer.positionStream.listen((position) {
      setState(() {
        _sliderValue = position.inSeconds.toDouble();
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
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
                    // Slider(
                    //   value: _sliderValue,
                    //   min: 0.0,
                    //   max: _audioPlayer.duration?.inSeconds.toDouble() ?? 0.0,
                    //   onChanged: (value) {
                    //     _audioPlayer.seek(Duration(seconds: value.toInt()));
                    //   },
                    // ),
                    StreamBuilder<Duration>(
                      stream: _audioPlayer.positionStream,
                      builder: (context, snapshot) {
                        final position = snapshot.data ?? Duration.zero;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Slider(
                              value: position.inSeconds.toDouble(),
                              min: 0.0,
                              max: _audioPlayer.duration?.inSeconds.toDouble() ?? 0.0,
                              onChanged: (value) {
                                _audioPlayer.seek(Duration(seconds: value.toInt()));
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 2, 15, 8),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${_formatDuration(position)}'),
                                  DropdownButton<double>(
                                    value: _playbackSpeed,
                                    items: [0.5, 0.75, 1.0, 1.25, 1.5, 2.0]
                                        .map<DropdownMenuItem<double>>((double value) {
                                      return DropdownMenuItem<double>(
                                        value: value,
                                        child: Text('$value x'), // Display the value in the dropdown
                                      );
                                    }).toList(),
                                    onChanged: (double? newValue) {
                                      if (newValue != null) {
                                        setState(() {
                                          _playbackSpeed = newValue;
                                        });
                                        _audioPlayer.setSpeed(_playbackSpeed);
                                      }
                                    },
                                    icon: null,
                                  ),


                                  Text(' ${_formatDuration(_audioPlayer.duration ?? Duration.zero)}'),
                                ],


                              ),
                            )
                          ],
                        );

                      },
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
      //_audioPlayer.setAsset(_songList[_currentSongIndex]);
      ///using asset
      _audioPlayer.setUrl(_songList[_currentSongIndex]);
      _audioPlayer.play();
      setState(() {});
    }
  }


  ///Skip one song backward
  void _skipToPrevious() {
    if (_currentSongIndex > 0) {
      _currentSongIndex--;
      //_audioPlayer.setAsset(_songList[_currentSongIndex]);
      _audioPlayer.setUrl(_songList[_currentSongIndex]);
      _audioPlayer.play();
      setState(() {});
    }
  }

  Future<void> _changePlaybackSpeed(double delta) async {
    // Update the playback speed with a delta value
    _playbackSpeed += delta;
    // Ensure playback speed is within a reasonable range (0.5x to 2.0x)
    _playbackSpeed = _playbackSpeed.clamp(0.5, 2.0);
    // Set the new playback speed
    await _audioPlayer.setSpeed(_playbackSpeed);
    setState(() {});
  }
}

