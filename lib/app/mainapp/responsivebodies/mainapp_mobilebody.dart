import 'package:bookapp/app/mainapp/widget/custom_drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainAppMobileBody extends StatefulWidget {
  const MainAppMobileBody({super.key});

  @override
  State<MainAppMobileBody> createState() => _MainAppMobileBodyState();
}

class _MainAppMobileBodyState extends State<MainAppMobileBody> {
  List color1 = [
    Colors.blue,
    Colors.red,
    Colors.amberAccent,
    Colors.orange,
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.cyanAccent,
    Colors.indigo,
    Colors.pink,
    Colors.lime,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: color1.length,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              duration: Duration(seconds: 5),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              curve: Curves.fastOutSlowIn,
              child: Row(
                children: [
                  Text("data  ${index}"),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: color1[index],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
