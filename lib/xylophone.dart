import 'package:flutter/material.dart';
import 'package:xylophone_app/xylophone_player.dart';

class XylophoneWidget extends StatelessWidget {
  static XylophonePlayer player = XylophonePlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          createNoteButton(Colors.red, Note.C),
          createNoteButton(Colors.orange, Note.D),
          createNoteButton(Colors.yellow, Note.E),
          createNoteButton(Colors.green, Note.F),
          createNoteButton(Colors.teal, Note.G),
          createNoteButton(Colors.blue, Note.A),
          createNoteButton(Colors.purple, Note.B),
        ],
      ),
    );
  }

  Widget createNoteButton(Color color, Note noteToPlay) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          player.playNote(noteToPlay);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: color,
          child: Text(
            noteToPlay.name,
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontFamily: 'Lobster'),
          ),
        ),
      ),
    );
  }
}
