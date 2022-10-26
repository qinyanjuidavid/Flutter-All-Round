import 'package:pro1/views/Listview_screen.dart';
import 'package:pro1/views/Row_screen.dart';
import 'package:pro1/views/column_screen.dart';
import 'package:pro1/views/home.dart';
import 'package:pro1/views/text_screen.dart';

final appRoutes = {
  "/": (context) => HomeScreen(),
  "text/": (context) => TextScreen(),
  "rows/": (context) => RowScreen(),
  "column/": (context) => ColumnScreen(),
  "listview/": (context) => ListViewScreen(),
};
