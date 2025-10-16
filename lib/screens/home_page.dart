import 'package:donut_app/tab/burger_tab.dart';
import 'package:donut_app/tab/donut_tab.dart';
import 'package:donut_app/tab/pancake_tab.dart';
import 'package:donut_app/tab/pizza_tab.dart';
import 'package:donut_app/tab/smoothie_tab.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', label: "Donut",),
    //burguer tab
    const MyTab(iconPath: 'lib/icons/burger.png', label: "Burger"),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: "Smoothie"),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: "Pancake"),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png', label: "Pizza"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          ///icono
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          //icono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            //Texto principal
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text(
                    'eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            //Pestaña o tabbar
            TabBar(tabs: myTabs),

            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
               
              ]),
            )
            //Contenido
            //Carito
          ],
        ),
      ),
    );
  }
}