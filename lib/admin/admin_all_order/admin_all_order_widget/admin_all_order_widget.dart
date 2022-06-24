// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class AdminAllOrderWidget extends StatefulWidget {

  const AdminAllOrderWidget({Key? key}) : super(key: key);

  @override
  State<AdminAllOrderWidget> createState() => _AdminAllOrderWidgetState();
}

class _AdminAllOrderWidgetState extends State<AdminAllOrderWidget> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'id',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Name',
      field: 'name',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Age',
      field: 'age',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Role',
      field: 'role',
      type: PlutoColumnType.select(<String>[
        'Programmer',
        'Designer',
        'Owner',
      ]),
    ),
    PlutoColumn(
      title: 'Joined',
      field: 'joined',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Working time',
      field: 'working_time',
      type: PlutoColumnType.time(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user1'),
        'name': PlutoCell(value: 'Mike'),
        'age': PlutoCell(value: 20),
        'role': PlutoCell(value: 'Programmer'),
        'joined': PlutoCell(value: '2021-01-01'),
        'working_time': PlutoCell(value: '09:00'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user2'),
        'name': PlutoCell(value: 'Jack'),
        'age': PlutoCell(value: 25),
        'role': PlutoCell(value: 'Designer'),
        'joined': PlutoCell(value: '2021-02-01'),
        'working_time': PlutoCell(value: '10:00'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user3'),
        'name': PlutoCell(value: 'Suzi'),
        'age': PlutoCell(value: 40),
        'role': PlutoCell(value: 'Owner'),
        'joined': PlutoCell(value: '2021-03-01'),
        'working_time': PlutoCell(value: '11:00'),
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(title: 'User information', fields: ['name', 'age']),
    PlutoColumnGroup(title: 'Status', children: [
      PlutoColumnGroup(title: 'A', fields: ['role'], expandedColumn: true),
      PlutoColumnGroup(title: 'Etc.', fields: ['joined', 'working_time']),
    ]),
  ];

  /// [PlutoGridStateManager] has many methods and properties to dynamically manipulate the grid.
  /// You can manipulate the grid dynamically at runtime by passing this through the [onLoaded] callback.
  late final PlutoGridStateManager stateManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
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
      ),
    );
  }
}
























































/* PlutoGrid(
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
      cells: {
        'id': PlutoCell(value: '1'),
        'order': PlutoCell(value: '1'),
        'time': PlutoCell(value: '10:00'),
        'date': PlutoCell(value: '2021-01-01'),
        'product': PlutoCell(value: 't-shirt'),
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
        'price': PlutoCell(value: 'LE : 1123 '),
      },
    ),
  ];
  
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(title: 'Order information', fields: ['order']),
    PlutoColumnGroup(title: 'Status', fields: ['date','time']),
    PlutoColumnGroup(title: 'brand', fields: ['brand']),
    PlutoColumnGroup(title: 'Product', fields: ['product'], expandedColumn: true),
    PlutoColumnGroup(title: 'Price', fields: ['price']),
  ]; */
