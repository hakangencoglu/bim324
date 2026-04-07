
// main.dart dosyasında UI bileşenlerini kullanarak CRUD işlemlerini gösteren örnek:
// SQLite veritabanı ile etkileşim kurmak için gerekli paketler import edilir.
import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';
import 'Note.dart';

class NotelarArayuz extends StatefulWidget {
  const NotelarArayuz({super.key});

  @override
  NotelarArayuzState createState() => NotelarArayuzState();
}

class NotelarArayuzState extends State<NotelarArayuz> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  List<Note> _notes = [];

  @override
  void initState() {
    super.initState();
    _refreshNotes();
  }

  Future<void> _refreshNotes() async {
    final notes = await DatabaseHelper.instance.readAllNotes();
    setState(() {
      _notes = notes;
    });
  }

  Future<void> _addNote() async {
    final newNote = Note(title: _titleController.text, content: _contentController.text);
    await DatabaseHelper.instance.createNote(newNote);
    _titleController.clear();
    _contentController.clear();
    _refreshNotes();
  }

  Future<void> _deleteNote(int id) async {
    await DatabaseHelper.instance.deleteNote(id);
    _refreshNotes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Notlarım (SQLite)')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Başlık'),
              ),
              TextField(
                controller: _contentController,
                decoration: const InputDecoration(labelText: 'İçerik'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _addNote,
                child: const Text('Not Ekle'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _notes.length,
                  itemBuilder: (context, index) {
                    final note = _notes[index];
                    return Card(
                      child: ListTile(
                        title: Text(note.title),
                        subtitle: Text(note.content),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteNote(note.id!),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
