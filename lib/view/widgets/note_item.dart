import 'package:flutter/material.dart';
import 'package:todo_and_note/models/note.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  final Function() onEdit;
  final Function() onDelete;
  const NoteItem({
    super.key,
    required this.note,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 113, 113, 113),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              note.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: onEdit,
                icon: const Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 1, 84, 9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: onDelete,
                  icon: const Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 180, 12, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
