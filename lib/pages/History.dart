import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:wheat_check/pages/exports.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  AddInfoController controller = Get.put(AddInfoController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddInfoController>(builder: (controller) {
       return Scaffold(
        appBar: AppBar(title: Text('table'),),
        body: Table(),
      );
    },
     
    );
  }
}

class Table extends StatelessWidget {
  const Table({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('#'),
            ),
            DataColumn(
              label: Text('F/X ID'),
            ),
            DataColumn(
              label: Text('F/X nomi'),
            ),
            DataColumn(
              label: Text('Hudud'),
            ),
            DataColumn(
              label: Text('Sana'),
            ),
            DataColumn(
              label: Text('O\'rilgan maydon(gr)'),
            ),
            DataColumn(
              label: Text('To\'lov turi'),
            ),
            DataColumn(
              label: Text('Narx'),
            ),
            DataColumn(
              label: Text('Jami summa'),
            ),
            DataColumn(
              label: Text('Jami litr'),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Text("1"),
                ),
                DataCell(
                  Text("555599949"),
                ),
                DataCell(
                  Text(controller.name),
                ),
                DataCell(
                  Text("Asaka"),
                ),
                DataCell(
                  Text("20.05.2024"),
                ),
                DataCell(
                  Text("10"),
                ),
                DataCell(
                  Text("Click"),
                ),
                DataCell(
                  Text("1.000.000"),
                ),
                DataCell(
                  Text("605.000.000"),
                ),
                DataCell(
                  Text("200"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}















































// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:wheat_check/pages/exports.dart';

// class HistoryPage extends StatefulWidget {
//   const HistoryPage({super.key});

//   @override
//   State<HistoryPage> createState() => _HistoryPageState();
// }

// class _HistoryPageState extends State<HistoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     TableRow _tableRow = const TableRow(children: <Widget>[
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("1"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("3"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("4"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("5"),
//       ),
//     ]);
//     return Scaffold(
//       appBar: AppBar(title: Text('Table 1'),
//       ),
//       body: Center(child: Table(
//         border: TableBorder.all(),
//         defaultColumnWidth: FixedColumnWidth(80),
//         children:<TableRow> [
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//           _tableRow,
//         ],
//       ),),
//     );
//   }
// }
