part of 'todo_bloc.dart';


sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoading extends TodoState {}

final class TodoLoaded extends TodoState {
  final List<Todo> todos;
  DateTime? selectedDate; //krn dibungkus dalam satu kelas maka harus tetap ada agar bisa menyimpan datenya.

  TodoLoaded({
    required this.todos,
    required this.selectedDate,
  });
}