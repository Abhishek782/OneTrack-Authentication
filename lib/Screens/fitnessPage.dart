
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_project_ui/Screens/diet.dart';
import 'package:mini_project_ui/Screens/first_screen.dart';
import 'package:mini_project_ui/Screens/moneyPage.dart';
import 'package:mini_project_ui/Screens/routine.dart';
import 'package:mini_project_ui/Screens/upgradedr1.dart';


class FitnessPage extends StatefulWidget {
  const FitnessPage({Key? key}) : super(key: key);

  @override
  State<FitnessPage> createState() => _FitnessPageState();
}

class _FitnessPageState extends State<FitnessPage> {
  int navigationIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: Text('Fitness'),
            ),
        ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.greenAccent,
                    Colors.indigo,
                  ],
                )),
            child: Center(
              child: Text(
                'Hello this is fitness Page',
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
              type: BottomNavigationBarType.fixed,
              iconSize: 28,
              backgroundColor: Colors.indigo,
              landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              selectedItemColor: Colors.white70,
              unselectedItemColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.fitness_center_rounded,
                      color: Colors.white70,
                    ),
                    icon: Icon(
                      Icons.fitness_center_rounded,
                      color: Colors.black,
                    ),
                    label: 'Fitness'),

                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.fastfood_rounded,
                      color: Colors.black,
                    ),
                    label: 'Diet'),

                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.attach_money_outlined,
                      color: Colors.black,
                    ),
                    label: 'Money'),


                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.timer_rounded,
                      color: Colors.black,
                    ),
                    label: 'Routine'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),

                    label: 'Home'),
                // BottomNavigationBarItem(icon: Icon(),label: Icons.lunch_dining_outlined),
              ],
              onTap:(int index)
              {
                setState(() {
                  navigationIndex=index;
                  switch(navigationIndex)
                  {


                    case 0:
                      Fluttertoast.showToast(msg: 'U  are on FitnessPage');
                      break;
                    case 1:
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>UpDiet()), (route) => (route.isFirst));
                      break;
                    case 2:
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>MoneyPage()), (route) => (route.isFirst));
                      break;
                    case 3:
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>RoutinePage()), (route) => (route.isFirst));
                      break;
                    case 4:
                      Navigator.pop(context);
                  }
                }
                );
              }
          ),
        ),
    );
  }
}
