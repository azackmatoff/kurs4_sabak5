import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              buildContainer(
                color: Colors.redAccent,
                notaNomeri: '1',
              ),
              buildContainer(
                color: Colors.orangeAccent,
                notaNomeri: '2',
              ),
              buildContainer(
                color: Colors.yellowAccent,
                notaNomeri: '3',
              ),
              buildContainer(
                color: const Color(0xff49A84F),
                notaNomeri: '4',
              ),
              buildContainer(
                color: const Color(0xff2C9083),
                notaNomeri: '5',
              ),
              buildContainer(
                color: const Color(0xff2790EA),
                notaNomeri: '6',
                keleTurchuSplashColor: Colors.deepPurple,
              ),
              buildContainer(
                color: const Color(0xff9B27B1),
                notaNomeri: '7',
                keleTurchuSplashColor: Colors.cyanAccent,
              ),

              // /// Aty joktor
              // _atyJokSozsuz(Colors.redAccent),
              // _atyJokSozsuzEmes(Colors.yellowAccent),

              // /// Aty barlar
              // _atyBarSozsuz(color: Colors.red),
              // _atyBarSozsuzEmes(color: Colors.orangeAccent),
            ],
          ),
        ),
      ),
    );
  }

  buildContainer({
    @required Color color,
    @required String notaNomeri,
    Color keleTurchuSplashColor = Colors.cyan,
  }) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: keleTurchuSplashColor,
            onTap: () {
              player.play('notes/note$notaNomeri.wav');
            },
            child: Container(),
          ),
        ),
      ),
    );
  }

  /// Tomonku kodtor, bashkacha aytkanda
  /// funkciyalar, jon gana misal
  /// konul burbaybiz
  /// Misal START

  Expanded _atyJokSozsuzEmes([Color tus]) {
    return Expanded(
      child: Container(
        color: tus,
      ),
    );
  }

  Expanded _atyJokSozsuz(Color tus) {
    return Expanded(
      child: Container(
        color: tus,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.grey,
            onTap: () {
              player.play('notes/note1.wav');
            },
            child: Container(),
          ),
        ),
      ),
    );
  }

  Widget _atyBarSozsuzEmes({Color color}) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }

  Widget _atyBarSozsuz({@required Color color}) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }

  /// Misal END

}



/// DRY - Don't Repeat Yourself