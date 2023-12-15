import 'package:flutter/material.dart';
import 'package:todo_flutter/data/model/todo.dart';
import 'package:todo_flutter/data/source/todo_source.dart';
import 'package:todo_flutter/features/create_todo/create_todo_page.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final source = TodoSource();
  var todos = <Todo>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      fetch();
    });
  }

  Future<void> fetch() async {
    todos = await source.getAllTodos();
    setState(() {});
  }

  void goToTodoPage(Todo? todo) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return CreateTodoPage(todo: todo);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODOS"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => goToTodoPage(null),
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          fetch();
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            final todo = todos[index];
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                if (todo.id != null) {
                  source.deleteTodo(todo.id!);
                }
              },
              background: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red)),
              child: ListTile(
                onTap: () => goToTodoPage(todo),
                title: Text(todo.title),
                subtitle: Text(todo.description),
                trailing: Checkbox(
                  value: todo.completed,
                  onChanged: (value) async {
                    if (todo.id == null) return;
                    await source.toggleTodo(todo.id!, {"completed": value!});
                    todos[index] = todo.copyWith(completed: value);
                    setState(() {});
                  },
                ),
              ),
            );
          },
          itemCount: todos.length,
        ),
      ),
    );
  }
}
