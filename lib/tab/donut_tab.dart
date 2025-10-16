
import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  // donuts list
  final List donutOnSale = [
    //donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", 'Starbucks'],
    ['Strawberry', '127', Colors.pink, "lib/images/strawberry_donut.png", 'Dunkin Donuts'],
    ['Ice Cream', '109', Colors.lightBlue, "lib/images/icecream_donut.png", 'Krispy Kreme'],
    ['Grape', '112', Colors.purple, "lib/images/grape_donut.png", 'OXXO'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      // Cnatidad de elementos
      itemCount: donutOnSale.length,  
      // Lo que se va a construir en el grid (el contenido)
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4]
        );
      }
    );
  }
}