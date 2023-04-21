import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.size,
    required this.menuItems,
  }) : super(key: key);

  final Size size;
  final List<String> menuItems;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 60,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.4),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              menuItems.length,
              (index) => Container(
                    child: Stack(alignment: Alignment.center, children: [
                      FittedBox(
                          child: Text(
                        menuItems[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                    ]),
                  )).toList()),
    ));
  }
}
