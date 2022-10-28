import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  List<Map> gridList = List.generate(10, (index) {
    return {"id": index, "name": "Grid $index"};
  });
  Orientation orientation = Orientation.portrait;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: gridList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                  color: Colors.amber, child: Text(gridList[index]["name"])),
            );
          }),
    );
  }
}
