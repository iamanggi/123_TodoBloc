part of 'todo_bloc.dart';


sealed class TodoEvent {}

final class TodoEventAdd extends TodoEvent{ //untuk menambahkan todo
  final String title;
  final DateTime date;
  TodoEventAdd({
    required this.title, //untuk dijadikan parameter
    required this.date,
  });
}

final class TodoEventComplete extends TodoEvent{ //mengganti status
  final int index;

  TodoEventComplete({required this.index}); 

}

final class TodoSelectDate extends TodoEvent{ //untuk memilih date
  final DateTime date;

  TodoSelectDate({required this.date});
}