import 'package:flutter/material.dart';
import 'package:kurs4_sabak5/data/repository/audio_repository.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String noteNumber;
  final Color splashColor;
  const CustomContainer({
    @required this.color,
    @required this.noteNumber,
    this.splashColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: splashColor ?? Colors.cyan,
            onTap: () async {
              await audioRepository.playNote(noteNumber);
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
