import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:todo_flutter/data/model/message_res.dart';
import 'package:todo_flutter/data/model/todo.dart';

import '../../instances/dio_instance.dart';

part 'todo_source.g.dart';

@RestApi()
abstract class TodoSource {
  factory TodoSource() => _TodoSource(DioInstance());

  @POST("/todo/save")
  Future<Todo> saveTodo(@Body() Todo todo);

  @PUT("/todo/update/{id}")
  Future<MessageRes> updateTodo(@Path("id") int id, @Body() Todo todo);

  @GET("/todo/all")
  Future<List<Todo>> getAllTodos();

  @DELETE("/todo/delete/{id}")
  Future<MessageRes> deleteTodo(@Path("id") int id);

  @PATCH("/todo/toggle/{id}")
  Future<void> toggleTodo(@Path("id") int id, @Body() Map<String, bool> body);
}
