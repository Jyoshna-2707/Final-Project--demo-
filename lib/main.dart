import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScheduleTable(),
    );
  }
}

class ScheduleTable extends StatelessWidget {
  const ScheduleTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daycare Schedule Table"),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(),

          columns: const [
            DataColumn(label: Text('Activity')),
            DataColumn(label: Text('Start Time')),
            DataColumn(label: Text('End Time')),
            DataColumn(label: Text('Teacher')),
          ],

          rows: const [
            DataRow(cells: [
              DataCell(Text('Breakfast')),
              DataCell(Text('9:00 AM')),
              DataCell(Text('9:30 AM')),
              DataCell(Text('Ms. Anna')),
            ]),

            DataRow(cells: [
              DataCell(Text('Learning Activity')),
              DataCell(Text('10:00 AM')),
              DataCell(Text('11:00 AM')),
              DataCell(Text('Mr. John')),
            ]),

            DataRow(cells: [
              DataCell(Text('Play Time')),
              DataCell(Text('11:30 AM')),
              DataCell(Text('12:30 PM')),
              DataCell(Text('Ms. Sara')),
            ]),

            DataRow(cells: [
              DataCell(Text('Lunch')),
              DataCell(Text('12:30 PM')),
              DataCell(Text('1:00 PM')),
              DataCell(Text('Ms. Anna')),
            ]),

            DataRow(cells: [
              DataCell(Text('Nap Time')),
              DataCell(Text('1:30 PM')),
              DataCell(Text('2:30 PM')),
              DataCell(Text('Mr. John')),
            ]),
          ],
        ),
      ),
    );
  }
}