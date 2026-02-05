import 'package:flutter/material.dart';
import 'package:notepad/models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  // getter
  List<Note> get notes => _notes;

  // tambah note
  void addNote(String title, String description) {
    final note = Note(
      title: title,
      description: description,
    );

    _notes.add(note);
    notifyListeners();
  }
}
