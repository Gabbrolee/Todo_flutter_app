import 'package:flutter/material.dart';
import './todo_model/database_model.dart';
import './screens/Homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var database = DatabaseConnect();
  // insert a same todo
 // await database.insertTodo(Todo(id: 1, title: 'this is the sample todo', creationDate: DateTime.now(), isChecked: true));
  print(await database.getTodo());
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
