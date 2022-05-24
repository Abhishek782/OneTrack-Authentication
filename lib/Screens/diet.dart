import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_project_ui/Screens/moneyPage.dart';
import 'package:mini_project_ui/Screens/routine.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'fitnessPage.dart';
import 'package:mini_project_ui/constants/constants.dart';
import 'package:mini_project_ui/constants/contsListTileItem.dart';

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with TickerProviderStateMixin {
  late TabController _controller;
  int navigationIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text('Diet'),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(2),
            controller: _controller,
            tabs: [
              Tab(
                child: Text(
                  "BREAKFAST",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "LUNCH",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "SNACKS",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "DINNER",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              )
            ],
          ),
        ),
        body:
        TabBarView(
          controller: _controller,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.greenAccent,
                  Colors.indigo,
                ],
              )),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children:[
                  MyListItem(title: 'Tea/Coffee',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img:'9' ,
                  ),
                  MyListItem(title: 'Poha',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img:'Vertical Lockup on Black Background' ,
                  ),
                  MyListItem(title: 'Fruits',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: '10',
                  ),
                  MyListItem(title: 'Biscuits',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: '11',
                  ),
                  MyListItem(title: 'Upma',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img:'7' ,
                  ),
                  MyListItem(title: 'Misal Pav',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: '8',
                  ),
                  MyListItem(title: 'Medu Vada',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img:'4' ,
                  ),
                MyListItem(title: 'Idli Sambhar',
                      subtitle: 'Makes Body perfect',
                      color: kListcolor,
                      gradient: kgradientcolor,
                      img: 'Vertical Lockup on White Background',
                  ),
                MyListItem(
                      title: 'Dosa ',
                      subtitle: 'Makes Body perfect',
                      color: kListcolor,
                      gradient: kgradientcolor,
                  img: '3',
                  ),
                MyListItem(title: 'Sprouts',
                      subtitle: 'Makes Body perfect',
                      color: kListcolor,
                      gradient: kgradientcolor,
                  img: '5',
                  ),
                MyListItem(title: 'Shira',
                      subtitle: 'Makes Body perfect',
                      color: kListcolor,
                      gradient: kgradientcolor,
                      img: '6',
                  ),


                ],
                //
                //
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.greenAccent,
                  Colors.indigo,
                ],
              )),
              child:  ListView(
                physics: BouncingScrollPhysics(),
                children:[
                MyListItem(
                     title: 'Paneer',
                      subtitle: 'Makes Body perfect',
                      color: kListcolor,
                      gradient: kgradientcolor,
                      img: 'Paneer',
                  ),
                  MyListItem(title: 'Eggs',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'eggs',
                  ),
                  MyListItem(title: 'Chicken',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'chicken',
                  ),
                  MyListItem(title: 'Dal',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'Dal',
                  ),
                  MyListItem(title: 'Rice',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'rice',
                  ),
                  MyListItem(title: 'Fish',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'Fish',
                  ),
                  MyListItem(title: 'Ladyfinger',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'ladyfig',
                  ),
                  MyListItem(title: 'Fenugreek',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'methhi',
                  ),
                  MyListItem(title: 'Potato',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'potato',
                  ),
                  MyListItem(title: 'Brinjal',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'brinjal',
                  ),
                  MyListItem(title: 'Roti',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'chapati',
                  ),
                //
                ],
                //

              ),
              // child: Center(
              //   child: Text(
              //     'Hello this is Lunch Page',
              //     style: TextStyle(
              //       fontSize: 22,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ),
              // ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.greenAccent,
                  Colors.indigo,
                ],
              )),
              child:  ListView(
                physics: BouncingScrollPhysics(),
                children:[
                  MyListItem(title: 'Burger',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'burger',
                  ),
                  MyListItem(title: 'Sandwich',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'sandw',
                  ),
                  MyListItem(title: 'Samosa',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'samosa',
                  ),
                  MyListItem(title: 'Tea/Coffee',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'tea',
                  ),
                  MyListItem(title: 'Pizza',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'pizza',
                  ),
                  MyListItem(title: 'Vada Pav',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'vadapav',
                  ),
                  MyListItem(title: 'Pav Bhaji',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'pavbhaji',
                  ),
                  MyListItem(title: 'Pani-Puri',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'panip',
                  ),
                  MyListItem(title: 'Kulfi/Icecream',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'ice',
                  ),
                  MyListItem(title: 'French Fries',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'fries',
                  ),
                  MyListItem(title: 'Cake',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'cake',
                  ),
                  MyListItem(title: 'Jalebi',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'jalebi',
                  ),
                ],
                //

              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.greenAccent,
                  Colors.indigo,
                ],
              )),
              child:  ListView(
                physics: BouncingScrollPhysics(),
                children:[
                  MyListItem(title: 'Paneer',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'Paneer',
                  ),
                  MyListItem(title: 'Eggs',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'eggs',
                  ),
                  MyListItem(title: 'Chicken',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'chicken',
                  ),
                  MyListItem(title: 'Dal',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'Dal',
                  ),
                  MyListItem(title: 'Rice',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'rice',
                  ),
                  MyListItem(title: 'Fish',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'Fish',
                  ),
                  MyListItem(title: 'Ladyfinger',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'ladyfig',
                  ),
                  MyListItem(title: 'Fenugreek',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'methhi',
                  ),
                  MyListItem(title: 'Potato',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'potato',
                  ),
                  MyListItem(title: 'Brinjal',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'brinjal',
                  ),
                  MyListItem(title: 'Roti',
                    subtitle: 'Makes Body perfect',
                    color: kListcolor,
                    gradient: kgradientcolor,
                    img: 'chapati',
                  ),
                //
                 ],
              ),
            ),
          ],
        ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    floatingActionButton: FloatingActionButton(
    onPressed: (){},
    tooltip: 'Increment',
    child: const Icon(Icons.save),
      backgroundColor: Colors.lightGreenAccent,
      foregroundColor: Colors.black,
      elevation: 1,
    ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          backgroundColor: Colors.indigo,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fitness_center_rounded,
                  color: Colors.black,
                ),
                label: 'Fitness'),
            BottomNavigationBarItem(
              activeIcon: Icon(

                  Icons.fastfood_rounded,
                  color: Colors.white70,

              ),
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
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>FitnessPage()), (route) => (route.isFirst));
                    break;
                  case 1:
                    Fluttertoast.showToast(msg:"U are on the  Diet");
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
