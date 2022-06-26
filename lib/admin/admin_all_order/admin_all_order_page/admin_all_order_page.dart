// ignore_for_file: avoid_print

import 'package:fashion_style/admin/admin_interface/admin_interface.dart';
import 'package:flutter/widgets.dart';
import 'package:pluto_grid/pluto_grid.dart';

// ignore: must_be_immutable
class AdminAllOrdersPage extends AdminInterface{
  late final PlutoGridStateManager stateManager;
 
  AdminAllOrdersPage({Key? key}) : super(key: key);


  bool get backButton => true;

  @override
  String get title => 'All Orders';

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PlutoGrid(
        columns: columns,
        rows: rows,
        columnGroups: columnGroups,
        onLoaded: (PlutoGridOnLoadedEvent event) {
          stateManager = event.stateManager;
        },
        onChanged: (PlutoGridOnChangedEvent event) {
          print(event);
        },
        configuration: const PlutoGridConfiguration(
          enableColumnBorder: true,
        ),
      ),
    );
  }

  final List<PlutoColumn> columns = [
    PlutoColumn(
    title: 'Id', 
    field: 'id',
    
    type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Order',
      field: 'order',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Time',
      field: 'time',
      type: PlutoColumnType.time(),
    ),
    PlutoColumn(
      title: 'Brand',
      field: 'brand',
      type: PlutoColumnType.text(
        defaultValue: 'null'
      ),
    ),
    PlutoColumn(
      title: 'Date',
      field: 'date',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Product',
      field: 'product',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Price',
      field: 'price',
      type: PlutoColumnType.text(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      sortIdx: 1,
      
      cells: {
        'id': PlutoCell(value: '1'),
        'order': PlutoCell(value: '1'),
        'time': PlutoCell(value: '10:00'),
        'date': PlutoCell(value: '2021-01-01'),
        'product': PlutoCell(value: 't-shirt'),
        'brand': PlutoCell(value: 'zara'),
        'price': PlutoCell(value: 'LE : 2500 '),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: '2'),
        'order': PlutoCell(value: '2'),
        'time': PlutoCell(value: '7:00'),
        'date': PlutoCell(value: '2021-01-01'),
        'product': PlutoCell(value: 't-shirt'),
        'brand': PlutoCell(value: 'zara'),
        'price': PlutoCell(value: 'LE : 2890 '),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: '3'),
        'order': PlutoCell(value: '3'),
        'time': PlutoCell(value: '6:00'),
        'date': PlutoCell(value: '2021-01-01'),
        'product': PlutoCell(value: 't-shirt'),
        'brand': PlutoCell(value: 'zara'),
        'price': PlutoCell(value: 'LE : 6334 '),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: '1'),
        'order': PlutoCell(value: '5'),
        'time': PlutoCell(value: '4:00'),
        'date': PlutoCell(value: '2021-01-01'),
        'product': PlutoCell(value: 'pants'),
        'brand': PlutoCell(value: 'zara'),
        'price': PlutoCell(value: 'LE : 1123 '),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true,),
    PlutoColumnGroup(title: 'Order information', fields: ['order']),
    PlutoColumnGroup(title: 'Status', fields: ['date','time']),
    PlutoColumnGroup(title: 'brand', fields: ['brand']),
    PlutoColumnGroup(title: 'Product', fields: ['product'], expandedColumn: true),
    PlutoColumnGroup(title: 'Price', fields: ['price']),
  ];
}