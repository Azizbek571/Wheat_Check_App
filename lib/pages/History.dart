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
        appBar: AppBar(title: Text('Table'),),
        body: SingleChildScrollView
        (scrollDirection: Axis.vertical,
          child:
          
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            controller.loading ? Center(child: CircularProgressIndicator()):
             Column(
              
              children:  List.generate(controller.names.length, (index){
                var item = controller.names[index];
                      return 
                       Card(
               
                   child: DataTable(
                    
                     columns: [
                       // DataColumn(
                       //   label: Text('#'),
                       // ),
                      //  DataColumn(
                      //    label: Text('F/X ID'),
                      //  ),
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
                // DataCell(
                //   Text("1"),
                // ),
                // DataCell(
                //   Text(item['id']),
                // ),
                DataCell(
                  Text(item['fermer_hojalik_nomi']),
                  
                ),
                DataCell(
                  Text(item['region']),
                ),
                DataCell(
                  Text(item['date']),
                ),
                DataCell(
                  Text(item['area']),
                ),
                DataCell(
                  Text(item['payment_type']),
                ),
                DataCell(
                  Text(item['price']),
                ),
                DataCell(
                  Text(item['summ']),
                ),
                DataCell(
                  Text(item['fuel']),
                ),
              ],
                       ),
                     ],
                   ),
                 );
              }
              )
                       ),
          ),
        ),
             );
    },
     
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
