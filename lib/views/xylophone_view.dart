import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kurs4_sabak5/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak5/widgets/custom_container.dart';

class XylophoneView extends StatefulWidget {
  const XylophoneView({Key key}) : super(key: key);

  @override
  _XylophoneViewState createState() => _XylophoneViewState();
}

class _XylophoneViewState extends State<XylophoneView> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              CustomContainer(
                color: AppColors.red,
                noteNumber: '1',
              ),
              CustomContainer(
                color: AppColors.yellow,
                noteNumber: '2',
              ),
              CustomContainer(
                color: AppColors.orange,
                noteNumber: '3',
              ),
              CustomContainer(
                color: AppColors.greenLight,
                noteNumber: '4',
              ),
              CustomContainer(
                color: AppColors.greenDark,
                noteNumber: '5',
              ),
              CustomContainer(
                color: AppColors.blue,
                noteNumber: '6',
              ),
              CustomContainer(
                color: AppColors.pinkDark,
                noteNumber: '7',
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