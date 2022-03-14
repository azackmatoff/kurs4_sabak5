import 'package:kurs4_sabak5/data/services/audio_services.dart';

class AudioRepository {
  Future<void> playNote(String number) async {
    await audioServices.playNote2(number);
  }
}

final AudioRepository audioRepository = AudioRepository();
