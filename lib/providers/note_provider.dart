import 'package:flutter/material.dart';
import 'package:notepad/models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];
  List<Note> get getNotes{
    return _notes;
  }

  void NotesOperation(){
    addNewNote('First Note', 'First Note Description');
  }

  void addNewNote(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}
