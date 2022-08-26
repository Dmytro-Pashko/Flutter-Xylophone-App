import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class XylophonePlayer {
  /// Match the musical note with sound asset.
  var noteAssets = {
    Note.C: AssetSource('assets_note1.wav'),
    Note.D: AssetSource('assets_note2.wav'),
    Note.E: AssetSource('assets_note3.wav'),
    Note.F: AssetSource('assets_note4.wav'),
    Note.G: AssetSource('assets_note5.wav'),
    Note.A: AssetSource('assets_note6.wav'),
    Note.B: AssetSource('assets_note7.wav'),
  };

  /// Plays the musical note.
  void playNote(Note note) {
    if (kDebugMode) {
      print("Playing $note");
    }
    final player = AudioPlayer();
    player.play(noteAssets[note]!);
  }
}

/// Enumerates musical notes available for playing.
enum Note {
  ///DO
  C,

  ///RE
  D,

  ///MI
  E,

  ///FA
  F,

  ///SOL
  G,

  ///LA
  A,

  ///SI
  B
}
