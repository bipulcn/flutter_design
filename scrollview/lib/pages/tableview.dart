import "package:flutter/material.dart";

class TableViewPage extends StatefulWidget {
  const TableViewPage({super.key});

  @override
  State<TableViewPage> createState() => _TableViewPageState();
}

class _TableViewPageState extends State<TableViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Layout"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(64),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Container(
                    height: 72,
                    width: 64,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 184,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                Container(
                  height: 64,
                  width: 120,
                  color: Colors.purple,
                ),
                Container(
                  height: 32,
                  width: 64.0,
                  color: Colors.yellow,
                ),
                Center(
                  child: Container(
                    height: 32,
                    width: 64,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
