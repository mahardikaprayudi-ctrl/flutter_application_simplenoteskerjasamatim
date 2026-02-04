import 'package:flutter/material.dart';

class Note {
  final String title;
  final String description;

  Note({
    required this.title,
    required this.description,
  });
}

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(String title, String description) {
    _notes.add(
      Note(
        title: title,
        description: description,
      ),
    );
    notifyListeners();
  }
}
