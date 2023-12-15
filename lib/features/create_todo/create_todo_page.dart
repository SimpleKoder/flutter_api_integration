import 'package:flutter/material.dart';
import 'package:todo_flutter/data/model/todo.dart';
import 'package:todo_flutter/data/source/todo_source.dart';

class CreateTodoPage extends StatefulWidget {
  const CreateTodoPage({super.key, this.todo});
  final Todo? todo;

  @override
  State<CreateTodoPage> createState() => _CreateTodoPageState();
}

class _CreateTodoPageState extends State<CreateTodoPage> {
  final source = TodoSource();
  final titleCtrl = TextEditingController();
  final descCtrl = TextEditingController();
  var isUpdate = false;

  @override
  void initState() {
    super.initState();
    isUpdate = widget.todo != null;

    if (isUpdate) {
      titleCtrl.text = widget.todo!.title;
      descCtrl.text = widget.todo!.description;
    }
  }

  @override
  void dispose() {
    titleCtrl.dispose();
    descCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isUpdate ? "UPDATE" : "CREATE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleCtrl,
              decoration: const InputDecoration(hintText: "Enter title"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: descCtrl,
              decoration: const InputDecoration(hintText: "Enter description"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                if (isUpdate) {
                  final response = await source.updateTodo(
                      widget.todo!.id!,
                      widget.todo!.copyWith(
                        title: titleCtrl.text,
                        description: descCtrl.text,
                      ));
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(response.message)));
                } else {
                  await source.saveTodo(
                    Todo(
                      title: titleCtrl.text,
                      description: descCtrl.text,
                      completed: false,
                    ),
                  );
                }
                Navigator.pop(context);
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
