import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> students = [
      {'id': 1, 'name': 'Alice', 'course': 'Mathematics'},
      {'id': 2, 'name': 'Bob', 'course': 'Physics'},
      {'id': 3, 'name': 'Charlie', 'course': 'Computer Science'},
    ];
    return Scaffold(
      body: DataTable(
          columns: [
            DataColumn(
              label: Text("id"),
            ),
            DataColumn(
              label: Text("name"),
            ),
            DataColumn(
              label: Text("course"),
            )
          ],
          rows: List.generate(
            students.length,
            (index) => DataRow(cells: [
              DataCell(Text(students[index]["id"].toString())),
              DataCell(Text(students[index]["name"])),
              DataCell(Text(students[index]["course"]))
            ]),
          )),
    );
  }
}
