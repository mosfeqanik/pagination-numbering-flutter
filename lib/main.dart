import 'package:pagination_numbering/builder_page.dart';
import 'package:pagination_numbering/dropdown_page.dart';
import 'package:pagination_numbering/numbers_page.dart';
import 'package:pagination_numbering/only_arrows_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Number Paginator"),
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Hidden")),
                Tab(child: Text("Numbers")),
                Tab(child: Text("Dropdown")),
                Tab(child: Text("Custom Builder")),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OnlyArrowsPage(),
              NumbersPage(),
              DropdownPage(),
              BuilderPage(),
            ],
          ),
        ),
      ),
    );
  }
}